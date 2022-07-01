package §6!?§
{
   import §0!Y§.DisplayObject;
   
   public class §9§ extends §7!t§
   {
       
      
      private var §6b§:Vector.<§7!t§>;
      
      private var §#",§:§7!t§;
      
      public function §9§(param1:String, param2:§`!O§)
      {
         this.§6b§ = new Vector.<§7!t§>();
         super(param1,param2);
      }
      
      public function §^s§(param1:String, param2:§7!t§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(param2.frameCount == 0)
         {
            return;
         }
         if(!this.§#",§)
         {
            this.§#",§ = param2;
         }
         this.§6b§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§#",§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§#",§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§#",§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§#",§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§#",§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §7!t§
      {
         var _loc2_:§7!t§ = null;
         for each(_loc2_ in this.§6b§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§#",§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§#",§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§7!t§ = null;
         for each(_loc2_ in this.§6b§)
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
         return this.§6b§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §7!t§
      {
         if(param1 >= 0 && param1 < this.§6b§.length)
         {
            return this.§6b§[param1];
         }
         return null;
      }
   }
}
