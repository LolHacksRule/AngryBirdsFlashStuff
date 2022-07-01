package §9!$§
{
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §=U§.§3p§;
   
   public class §+!-§ extends §&!W§
   {
       
      
      private var §@C§:String;
      
      private var §2!u§:Boolean;
      
      private var §3A§:Number;
      
      private var §<!n§:int;
      
      public function §+!-§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@C§ = param3;
         this.§2!u§ = param4;
         this.§3A§ = param5;
         this.§<!n§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3p§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §+!§.§4c§(this.§@C§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §&!W§
      {
         return new §+!-§(time,duration,this.§@C§,this.§2!u§,this.§3A§,this.§<!n§);
      }
   }
}
