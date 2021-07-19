package §3!a§
{
   import §8§.§#$+§;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   
   public class §9!&§ extends §`#K§
   {
       
      
      private var §&#O§:String;
      
      private var §>";§:Boolean;
      
      private var §>!B§:Number;
      
      private var §#&§:int;
      
      public function §9!&§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§&#O§ = param3;
         this.§>";§ = param4;
         this.§>!B§ = param5;
         this.§#&§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!=§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §#$+§.playSound(this.§&#O§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §`#K§
      {
         return new §9!&§(time,duration,this.§&#O§,this.§>";§,this.§>!B§,this.§#&§);
      }
   }
}
