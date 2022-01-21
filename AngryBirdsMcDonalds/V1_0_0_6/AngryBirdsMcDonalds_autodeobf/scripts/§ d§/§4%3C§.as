package § d§
{
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   import §^!K§.§ !$§;
   
   public class §4<§ extends §,!+§
   {
       
      
      private var §5m§:String;
      
      private var §^![§:Boolean;
      
      private var §!8§:Number;
      
      private var §<E§:int;
      
      public function §4<§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§5m§ = param3;
         this.§^![§ = param4;
         this.§!8§ = param5;
         this.§<E§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<!'§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § !$§.§-N§(this.§5m§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,!+§
      {
         return new §4<§(time,duration,this.§5m§,this.§^![§,this.§!8§,this.§<E§);
      }
   }
}
