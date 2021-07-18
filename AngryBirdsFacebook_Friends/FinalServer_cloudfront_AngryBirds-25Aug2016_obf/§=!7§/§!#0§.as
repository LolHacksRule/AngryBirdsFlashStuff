package §=!7§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §@"§.§&!=§;
   import §@"§.§]!-§;
   
   public class §!#0§ extends §,"?§
   {
       
      
      private var §9"_§:§+,§;
      
      public var §&#E§:Number = 0;
      
      public function §!#0§(param1:§]!-§, param2:§&!=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§>#s§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.§ #O§();
      }
      
      private function § #O§() : void
      {
         if(!this.§9"_§)
         {
            this.§9"_§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§""Z§.§8O§),§""Z§.§3!]§.§5"0§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§""Z§.§?!Y§));
            this.§9"_§.onComplete = this.§>#s§;
            this.§9"_§.play();
         }
      }
      
      private function §>#s§() : void
      {
         this.§&#E§ = 0;
         if(this.§9"_§)
         {
            this.§9"_§.stop();
         }
         this.§9"_§ = null;
      }
   }
}
