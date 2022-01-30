package §-!b§
{
   import §,!q§.DisplayObject;
   
   public class §8a§ extends §<W§
   {
       
      
      private var §=1§:Vector.<§<W§>;
      
      private var §7Q§:§<W§;
      
      public function §8a§(param1:String, param2:§[E§)
      {
         this.§=1§ = new Vector.<§<W§>();
         super(param1,param2);
      }
      
      public function §4!W§(param1:String, param2:§<W§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(param2.frameCount == 0)
         {
            return;
         }
         if(!this.§7Q§)
         {
            this.§7Q§ = param2;
         }
         this.§=1§.push(param2);
      }
      
      override public function addFrame(param1:String, param2:Number) : void
      {
         this.§7Q§.addFrame(param1,param2);
      }
      
      override public function getFrameWithOffset(param1:Number, param2:DisplayObject = null) : DisplayObject
      {
         return this.§7Q§.getFrameWithOffset(param1,param2);
      }
      
      override public function getFrame(param1:int, param2:DisplayObject = null) : DisplayObject
      {
         return this.§7Q§.getFrame(param1,param2);
      }
      
      override public function get frameCount() : int
      {
         return this.§7Q§.frameCount;
      }
      
      override public function get animationLengthMilliSeconds() : Number
      {
         return this.§7Q§.animationLengthMilliSeconds;
      }
      
      override public function getSubAnimation(param1:String) : §<W§
      {
         var _loc2_:§<W§ = null;
         for each(_loc2_ in this.§=1§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return this.§7Q§;
      }
      
      override public function get defaultSubAnimationName() : String
      {
         return this.§7Q§.name;
      }
      
      override public function hasSubAnimation(param1:String) : Boolean
      {
         var _loc2_:§<W§ = null;
         for each(_loc2_ in this.§=1§)
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
         return this.§=1§.length;
      }
      
      override public function getSubAnimationFromIndex(param1:int) : §<W§
      {
         if(param1 >= 0 && param1 < this.§=1§.length)
         {
            return this.§=1§[param1];
         }
         return null;
      }
   }
}
