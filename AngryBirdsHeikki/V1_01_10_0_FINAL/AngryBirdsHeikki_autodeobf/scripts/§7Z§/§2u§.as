package §7Z§
{
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   import §^!0§.§&M§;
   
   public class §2u§ extends §^!§
   {
       
      
      private var §<g§:String;
      
      private var §=![§:Boolean;
      
      private var §,8§:Number;
      
      private var §2x§:int;
      
      public function §2u§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§<g§ = param3;
         this.§=![§ = param4;
         this.§,8§ = param5;
         this.§2x§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §&M§.§6!#§(this.§<g§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §^!§
      {
         return new §2u§(time,duration,this.§<g§,this.§=![§,this.§,8§,this.§2x§);
      }
   }
}
