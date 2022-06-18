package §0=§
{
   import §&!v§.Sprite;
   import §1#W§.§!#&§;
   import §7!j§.§'0§;
   
   public class §;#&§ extends §6$'§
   {
       
      
      private var §5!U§:String;
      
      private var §'c§:Boolean;
      
      private var §%#3§:Number;
      
      private var §0#8§:int;
      
      public function §;#&§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§5!U§ = param3;
         this.§'c§ = param4;
         this.§%#3§ = param5;
         this.§0#8§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'0§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §!#&§.playSound(this.§5!U§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §6$'§
      {
         return new §;#&§(time,duration,this.§5!U§,this.§'c§,this.§%#3§,this.§0#8§);
      }
   }
}
