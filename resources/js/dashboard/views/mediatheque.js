import Axios from "axios"


export default {

 
 
    data () {
      return {
        colors: [
          'indigo',
          'warning',
          'pink darken-2',
          'red lighten-1',
          'deep-purple accent-4',
        ],
        slides: [
          'First',
          'Second',
          'Third',
          'Fourth',
          'Fifth',
        ],
        mediathequeVideo: [],
        show:false,
      }
    },

    created() {
      this.getAllVideo()
  },

  methods: {
    getAllVideo() {
        Axios.get('/api/video').then(({ data }) => {
       
           data.data.forEach(_video => {
                this.mediathequeVideo.push(_video)
            }) 
        })
    },


}
  }