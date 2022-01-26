package §+i§
{
   import §5!G§.§31§;
   import §7u§.Sprite;
   import §`!B§.§=m§;
   
   public class §&!K§ extends §'6§
   {
       
      
      private var §;! §:String;
      
      private var §`C§:Boolean;
      
      private var §>!K§:Number;
      
      private var §#B§:int;
      
      public function §&!K§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;! § = param3;
         this.§`C§ = param4;
         this.§>!K§ = param5;
         this.§#B§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=m§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §31§.§>%§(this.§;! §);
            return false;
         }
         return false;
      }
      
      override public function clone() : §'6§
      {
         return new §&!K§(time,duration,this.§;! §,this.§`C§,this.§>!K§,this.§#B§);
      }
   }
}
