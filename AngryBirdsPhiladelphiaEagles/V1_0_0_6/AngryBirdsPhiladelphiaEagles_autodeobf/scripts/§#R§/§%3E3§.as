package §#R§
{
   import §#!0§.§#-§;
   import §4!0§.§3§;
   import §86§.Sprite;
   
   public class §>3§ extends §@i§
   {
       
      
      private var § $§:String;
      
      private var §`L§:Boolean;
      
      private var §[E§:Number;
      
      private var §8O§:int;
      
      public function §>3§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ $§ = param3;
         this.§`L§ = param4;
         this.§[E§ = param5;
         this.§8O§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §#-§.playSound(this.§ $§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §@i§
      {
         return new §>3§(time,duration,this.§ $§,this.§`L§,this.§[E§,this.§8O§);
      }
   }
}
