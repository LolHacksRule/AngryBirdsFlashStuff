package §8%§
{
   import §9`§.§#U§;
   import §[!4§.§-#§;
   import §`!n§.Sprite;
   
   public class §3c§ extends §]p§
   {
       
      
      private var §`c§:String;
      
      private var §^C§:Boolean;
      
      private var §&!2§:Number;
      
      private var §-0§:int;
      
      public function §3c§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§`c§ = param3;
         this.§^C§ = param4;
         this.§&!2§ = param5;
         this.§-0§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#U§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §-#§.§4h§(this.§`c§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §]p§
      {
         return new §3c§(time,duration,this.§`c§,this.§^C§,this.§&!2§,this.§-0§);
      }
   }
}
