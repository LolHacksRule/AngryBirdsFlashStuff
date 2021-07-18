package §4!o§
{
   import § ! §.§5!x§;
   import §1T§.§'!c§;
   import §6![§.Sprite;
   
   public class §+y§ extends §0!c§
   {
       
      
      private var §;!T§:String;
      
      private var §,!-§:Boolean;
      
      private var §'!7§:Number;
      
      private var §9W§:int;
      
      public function §+y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;!T§ = param3;
         this.§,!-§ = param4;
         this.§'!7§ = param5;
         this.§9W§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §'!c§.§3!f§(this.§;!T§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §0!c§
      {
         return new §+y§(time,duration,this.§;!T§,this.§,!-§,this.§'!7§,this.§9W§);
      }
   }
}
