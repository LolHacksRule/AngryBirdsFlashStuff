package starling.events
{
   import starling.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class Touch
   {
      
      private static var sHelperMatrix:Matrix = new Matrix();
       
      
      private var mID:int;
      
      private var mGlobalX:Number;
      
      private var mGlobalY:Number;
      
      private var mPreviousGlobalX:Number;
      
      private var mPreviousGlobalY:Number;
      
      private var mTapCount:int;
      
      private var mPhase:String;
      
      private var mTarget:DisplayObject;
      
      private var mTimestamp:Number;
      
      public function Touch(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         super();
         this.mID = param1;
         this.mGlobalX = this.mPreviousGlobalX = param2;
         this.mGlobalY = this.mPreviousGlobalY = param3;
         this.mTapCount = 0;
         this.mPhase = param4;
         this.mTarget = param5;
      }
      
      public function getLocation(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.mGlobalX,this.mGlobalY);
         this.mTarget.root.getTransformationMatrix(param1,sHelperMatrix);
         return sHelperMatrix.transformPoint(_loc2_);
      }
      
      public function getPreviousLocation(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.mPreviousGlobalX,this.mPreviousGlobalY);
         this.mTarget.root.getTransformationMatrix(param1,sHelperMatrix);
         return sHelperMatrix.transformPoint(_loc2_);
      }
      
      public function clone() : Touch
      {
         var _loc1_:Touch = new Touch(this.mID,this.mGlobalX,this.mGlobalY,this.mPhase,this.mTarget);
         _loc1_.mPreviousGlobalX = this.mPreviousGlobalX;
         _loc1_.mPreviousGlobalY = this.mPreviousGlobalY;
         _loc1_.mTapCount = this.mTapCount;
         _loc1_.mTimestamp = this.mTimestamp;
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.mID;
      }
      
      public function get globalX() : Number
      {
         return this.mGlobalX;
      }
      
      public function get globalY() : Number
      {
         return this.mGlobalY;
      }
      
      public function get previousGlobalX() : Number
      {
         return this.mPreviousGlobalX;
      }
      
      public function get previousGlobalY() : Number
      {
         return this.mPreviousGlobalY;
      }
      
      public function get tapCount() : int
      {
         return this.mTapCount;
      }
      
      public function get phase() : String
      {
         return this.mPhase;
      }
      
      public function get target() : DisplayObject
      {
         return this.mTarget;
      }
      
      public function get timestamp() : Number
      {
         return this.mTimestamp;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         this.mPreviousGlobalX = this.mGlobalX;
         this.mPreviousGlobalY = this.mGlobalY;
         this.mGlobalX = param1;
         this.mGlobalY = param2;
      }
      
      function setPhase(param1:String) : void
      {
         this.mPhase = param1;
      }
      
      function setTapCount(param1:int) : void
      {
         this.mTapCount = param1;
      }
      
      function setTarget(param1:DisplayObject) : void
      {
         this.mTarget = param1;
      }
      
      function setTimestamp(param1:Number) : void
      {
         this.mTimestamp = param1;
      }
   }
}
