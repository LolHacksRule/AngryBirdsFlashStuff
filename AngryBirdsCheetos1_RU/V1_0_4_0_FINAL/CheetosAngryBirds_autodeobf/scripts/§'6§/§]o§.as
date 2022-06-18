package §'6§
{
   import §!$§.§!!O§;
   import §3§.Sprite;
   import §`n§.§#H§;
   
   public class §]o§ extends §+v§
   {
       
      
      private var § Y§:String;
      
      private var §2!=§:Boolean;
      
      private var §'!#§:Number;
      
      private var §&Y§:int;
      
      public function §]o§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ Y§ = param3;
         this.§2!=§ = param4;
         this.§'!#§ = param5;
         this.§&Y§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#H§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §!!O§.§<D§(this.§ Y§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §+v§
      {
         return new §]o§(time,duration,this.§ Y§,this.§2!=§,this.§'!#§,this.§&Y§);
      }
   }
}
