package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-8d§.§_-vz§;
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   
   public class §_-fn§ extends §_-tC§
   {
      
      public static const §_-a9§:String = "background";
       
      
      private var mName:String;
      
      private var §_-ml§:String;
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-O6§:Number = 1.0;
      
      private var §_-0EB§:Boolean = true;
      
      public function §_-fn§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§_-ml§ = param4;
         this.§_-c§ = param5;
         this.§_-l1§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§_-O6§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §_-1z§() : String
      {
         return this.§_-ml§;
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function set §_-pm§(param1:Boolean) : void
      {
         this.§_-0EB§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§_-vz§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §_-mB§.§_-pc§(this.§_-1z§,param3)))
            {
               if(_loc5_ = param3.§_-70§(this.§_-1z§))
               {
                  (_loc4_ = new §_-09b§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§_-a9§) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == §_-a9§)
               {
                  if(!this.§_-0EB§)
                  {
                  }
               }
               _loc4_.scaleX = this.§_-O6§;
               _loc4_.scaleY = this.§_-O6§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§_-ux§ = param1;
         this.§_-09f§ = param2;
      }
      
      override public function clone() : §_-tC§
      {
         var _loc1_:§_-fn§ = new §_-fn§(time,duration,this.mName,this.§_-ml§,this.§_-c§,this.§_-l1§,this.§_-O6§);
         _loc1_.§_-0EB§ = this.§_-0EB§;
         _loc1_.§_-ux§ = this.§_-ux§;
         _loc1_.§_-09f§ = this.§_-09f§;
         return _loc1_;
      }
   }
}
