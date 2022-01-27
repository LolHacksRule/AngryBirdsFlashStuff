package §`!`§
{
   import §&!]§.Sprite;
   import §3!S§.§<5§;
   import §9!v§.§6a§;
   
   public class §!!n§ extends §=j§
   {
       
      
      private var §@!9§:String;
      
      private var §&N§:Boolean;
      
      private var §3§:Number;
      
      private var §with§:int;
      
      public function §!!n§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@!9§ = param3;
         this.§&N§ = param4;
         this.§3§ = param5;
         this.§with§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6a§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §<5§.playSound(this.§@!9§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §=j§
      {
         return new §!!n§(time,duration,this.§@!9§,this.§&N§,this.§3§,this.§with§);
      }
   }
}
