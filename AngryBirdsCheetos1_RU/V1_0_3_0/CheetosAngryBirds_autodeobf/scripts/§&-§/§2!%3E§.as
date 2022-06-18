package §&-§
{
   import §7!7§.§return§;
   import §9!a§.Sprite;
   import §=0§.§>O§;
   
   public class §2!>§ extends §3v§
   {
       
      
      private var §#!&§:String;
      
      private var §=[§:Boolean;
      
      private var §&!%§:Number;
      
      private var §4!7§:int;
      
      public function §2!>§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§#!&§ = param3;
         this.§=[§ = param4;
         this.§&!%§ = param5;
         this.§4!7§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>O§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §return§.§2!S§(this.§#!&§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §3v§
      {
         return new §2!>§(time,duration,this.§#!&§,this.§=[§,this.§&!%§,this.§4!7§);
      }
   }
}
