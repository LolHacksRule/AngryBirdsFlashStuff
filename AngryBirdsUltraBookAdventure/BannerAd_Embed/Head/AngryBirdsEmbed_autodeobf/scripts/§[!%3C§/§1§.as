package §[!<§
{
   import §%-§.Sprite;
   import §2!<§.§?!?§;
   import §<h§.§;@§;
   
   public class §1§ extends §#v§
   {
       
      
      private var §3!"§:String;
      
      private var §9f§:Boolean;
      
      private var §@G§:Number;
      
      private var §]4§:int;
      
      public function §1§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§3!"§ = param3;
         this.§9f§ = param4;
         this.§@G§ = param5;
         this.§]4§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§;@§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §?!?§.§#'§(this.§3!"§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §#v§
      {
         return new §1§(time,duration,this.§3!"§,this.§9f§,this.§@G§,this.§]4§);
      }
   }
}
