package §`@§
{
   import §#?§.§6!4§;
   import §+[§.§%G§;
   import §90§.Sprite;
   
   public class §'G§ extends §[!"§
   {
       
      
      private var §!!"§:String;
      
      private var §`G§:Boolean;
      
      private var §&V§:Number;
      
      private var §9!D§:int;
      
      public function §'G§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§!!"§ = param3;
         this.§`G§ = param4;
         this.§&V§ = param5;
         this.§9!D§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!4§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §%G§.§48§(this.§!!"§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §[!"§
      {
         return new §'G§(time,duration,this.§!!"§,this.§`G§,this.§&V§,this.§9!D§);
      }
   }
}
