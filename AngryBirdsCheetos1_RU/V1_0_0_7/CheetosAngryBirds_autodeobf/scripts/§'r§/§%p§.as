package §'r§
{
   import §"k§.§02§;
   import §2>§.§?!1§;
   import §;!Q§.Sprite;
   
   public class §%p§ extends §,!H§
   {
       
      
      private var §6"§:String;
      
      private var §&!`§:Boolean;
      
      private var §4!=§:Number;
      
      private var §#!_§:int;
      
      public function §%p§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§6"§ = param3;
         this.§&!`§ = param4;
         this.§4!=§ = param5;
         this.§#!_§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§02§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §?!1§.§0!O§(this.§6"§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,!H§
      {
         return new §%p§(time,duration,this.§6"§,this.§&!`§,this.§4!=§,this.§#!_§);
      }
   }
}
