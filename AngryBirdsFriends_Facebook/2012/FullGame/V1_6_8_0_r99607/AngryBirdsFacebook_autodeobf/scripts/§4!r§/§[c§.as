package §4!r§
{
   import §1k§.§%4§;
   import §?"<§.§<"!§;
   import §]&§.Sprite;
   
   public class §[c§ extends §8!A§
   {
       
      
      private var §=!g§:String;
      
      private var §3!q§:Boolean;
      
      private var §3N§:Number;
      
      private var §4"+§:int;
      
      public function §[c§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§=!g§ = param3;
         this.§3!q§ = param4;
         this.§3N§ = param5;
         this.§4"+§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§<"!§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §%4§.§>f§(this.§=!g§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §8!A§
      {
         return new §[c§(time,duration,this.§=!g§,this.§3!q§,this.§3N§,this.§4"+§);
      }
   }
}
