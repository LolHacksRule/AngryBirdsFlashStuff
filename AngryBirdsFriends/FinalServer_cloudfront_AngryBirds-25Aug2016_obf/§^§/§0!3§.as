package §^§#0
{
   public class §0!3§ extends §?V§
   {
       
      
      protected var §-!M§:Vector.<§3#_§>;
      
      protected var §+!X§:Number = 1.0;
      
      protected var §<!n§:Number = 1.0;
      
      protected var §?$%§:Number = 1.0;
      
      protected var §&§:Number = 1.0;
      
      protected var §5#q§:Number = 0.0;
      
      public function §0!3§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Number, param17:Number, param18:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param13,param14,param15,param16,param17,param18);
         this.§-!M§ = new Vector.<§3#_§>();
         this.§+!X§ = param7;
         this.§<!n§ = param8;
         this.§?$%§ = param9;
         this.§&§ = param10;
         this.§5#q§ = param12;
      }
      
      public function get §4#O§() : Number
      {
         return this.§+!X§;
      }
      
      public function get §]y§() : Number
      {
         return this.§<!n§;
      }
      
      public function get §<A§() : Number
      {
         return this.§?$%§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§&§;
      }
      
      public function get velocityY() : Number
      {
         return this.§5#q§;
      }
      
      public function §@o§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§3#_§;
         (_loc11_ = new §3#_§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§-!M§.push(_loc11_);
      }
   }
}
