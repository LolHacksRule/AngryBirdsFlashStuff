package §9!v§
{
   import §&!]§.DisplayObject;
   
   public class §,!e§ extends §1!_§
   {
       
      
      private var §+!0§:Vector.<§1!_§>;
      
      private var §>!B§:§1!_§;
      
      public function §,!e§(param1:String, param2:§6a§)
      {
         this.§+!0§ = new Vector.<§1!_§>();
         super(param1,param2);
      }
      
      public function §6O§(param1:String, param2:§1!_§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§>!B§)
         {
            this.§>!B§ = param2;
         }
         this.§+!0§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§>!B§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§>!B§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§>!B§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§>!B§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§>!B§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §1!_§
      {
         var _loc2_:§1!_§ = null;
         for each(_loc2_ in this.§+!0§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§>!B§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§>!B§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§1!_§ = null;
         for each(_loc2_ in this.§+!0§)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function get subAnimationCount() : int
      {
         return this.§+!0§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §1!_§
      {
         if(param1 >= 0 && param1 < this.§+!0§.length)
         {
            return this.§+!0§[param1];
         }
         return null;
      }
   }
}
