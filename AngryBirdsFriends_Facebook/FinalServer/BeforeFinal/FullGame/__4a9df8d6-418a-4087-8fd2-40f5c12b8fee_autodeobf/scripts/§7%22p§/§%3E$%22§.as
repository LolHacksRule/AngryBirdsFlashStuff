package §7"p§
{
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §'G§.§3$§;
   import §'G§.§^"[§;
   
   public class §>$"§ extends §&"+§
   {
       
      
      private var §;!s§:§7$C§;
      
      public var §-!<§:Number = 0;
      
      public function §>$"§(param1:§^"[§, param2:§3$§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§`"a§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.§;!s§)
         {
            this.§;!s§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§"!&§.§^F§),§"!&§.§`"H§.§1"W§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§"!&§.§="L§));
            this.§;!s§.onComplete = this.§`"a§;
            this.§;!s§.play();
         }
      }
      
      private function §`"a§() : void
      {
         this.§-!<§ = 0;
         if(this.§;!s§)
         {
            this.§;!s§.stop();
         }
         this.§;!s§ = null;
      }
   }
}
