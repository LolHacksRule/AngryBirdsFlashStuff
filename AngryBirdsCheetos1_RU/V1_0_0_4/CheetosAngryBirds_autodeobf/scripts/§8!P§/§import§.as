package §8!P§
{
   import §#K§.§,3§;
   import §1!A§.Sprite;
   import §8K§.§>g§;
   
   public class §import§ extends §60§
   {
       
      
      private var §@#§:String;
      
      private var §4!&§:Boolean;
      
      private var §4T§:Number;
      
      private var §2!'§:int;
      
      public function §import§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@#§ = param3;
         this.§4!&§ = param4;
         this.§4T§ = param5;
         this.§2!'§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>g§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §,3§.§7!=§(this.§@#§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §60§
      {
         return new §import§(time,duration,this.§@#§,this.§4!&§,this.§4T§,this.§2!'§);
      }
   }
}
