package §"!&§
{
   import §,6§.§!o§;
   import §1!T§.§6!H§;
   import §9E§.Sprite;
   
   public class §#C§ extends §!!%§
   {
       
      
      private var §>A§:String;
      
      private var §+!Q§:Boolean;
      
      private var §&K§:Number;
      
      private var §]!`§:int;
      
      public function §#C§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§>A§ = param3;
         this.§+!Q§ = param4;
         this.§&K§ = param5;
         this.§]!`§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!o§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §6!H§.playSound(this.§>A§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §!!%§
      {
         return new §#C§(time,duration,this.§>A§,this.§+!Q§,this.§&K§,this.§]!`§);
      }
   }
}
