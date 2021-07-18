package §`",§
{
   import §#";§.§0"#§;
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §7=§ extends §7!s§
   {
       
      
      private var §9"§:String;
      
      private var §<!'§:Boolean;
      
      private var §[+§:Number;
      
      private var §2;§:int;
      
      public function §7=§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9"§ = param3;
         this.§<!'§ = param4;
         this.§[+§ = param5;
         this.§2;§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §0"#§.§9"2§(this.§9"§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §7!s§
      {
         return new §7=§(time,duration,this.§9"§,this.§<!'§,this.§[+§,this.§2;§);
      }
   }
}
