package §"E§
{
   import §0!Y§.Sprite;
   import §6!?§.§`!O§;
   import §9![§.§1!i§;
   
   public class §1d§ extends §%!N§
   {
       
      
      private var §<!t§:String;
      
      private var §3A§:Boolean;
      
      private var §2l§:Number;
      
      private var §in§:int;
      
      public function §1d§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§<!t§ = param3;
         this.§3A§ = param4;
         this.§2l§ = param5;
         this.§in§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`!O§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §1!i§.§+!Y§(this.§<!t§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §%!N§
      {
         return new §1d§(time,duration,this.§<!t§,this.§3A§,this.§2l§,this.§in§);
      }
   }
}
