package §^$1§
{
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   
   public class §;#`§ extends §88§
   {
       
      
      private var § do§:§-#C§;
      
      public var §6!m§:Number = 0;
      
      public function §;#`§(param1:§"I§, param2:§'0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§`f§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.§ do§)
         {
            this.§ do§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§6"w§.§1#h§),§6"w§.§ "D§.§""3§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§6"w§.§ # §));
            this.§ do§.onComplete = this.§`f§;
            this.§ do§.play();
         }
      }
      
      private function §`f§() : void
      {
         this.§6!m§ = 0;
         if(this.§ do§)
         {
            this.§ do§.stop();
         }
         this.§ do§ = null;
      }
   }
}
