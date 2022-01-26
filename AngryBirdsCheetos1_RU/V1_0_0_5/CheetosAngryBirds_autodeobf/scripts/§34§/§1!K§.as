package §34§
{
   import §&!`§.§&A§;
   import §'Y§.§;J§;
   import §<s§.§]@§;
   import §[%§.§&a§;
   import flash.display.MovieClip;
   
   public class §1!K§ extends §&a§
   {
       
      
      private var §?L§:§&A§;
      
      public function §1!K§(param1:XML, param2:§&a§, param3:§;J§, param4:§&A§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§?L§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§]@§) : void
      {
         this.§?L§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
