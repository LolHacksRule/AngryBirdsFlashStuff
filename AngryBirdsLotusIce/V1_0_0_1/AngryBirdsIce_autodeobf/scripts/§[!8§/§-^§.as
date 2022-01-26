package §[!8§
{
   import §&V§.§,w§;
   import §&V§.§9!>§;
   import §&V§.§;Q§;
   import §@!=§.§"S§;
   import §@!=§.DisplayObject;
   import §@!=§.DisplayObjectContainer;
   import §@!=§.Sprite;
   
   public class §-^§ extends §-u§
   {
      
      public static const §;s§:String = "background";
       
      
      private var mName:String;
      
      private var §'+§:String;
      
      private var §2!2§:Number;
      
      private var §9!3§:Number;
      
      private var §6#§:Number;
      
      private var §5m§:Number;
      
      private var §1l§:Number = 1.0;
      
      private var §,S§:Boolean = true;
      
      public function §-^§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§'+§ = param4;
         this.§2!2§ = param5;
         this.§9!3§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§1l§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §1!3§() : String
      {
         return this.§'+§;
      }
      
      public function get x() : Number
      {
         return this.§2!2§;
      }
      
      public function get y() : Number
      {
         return this.§9!3§;
      }
      
      public function set §"n§(param1:Boolean) : void
      {
         this.§,S§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,w§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§;Q§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §9!>§.§-!§(this.§1!3§,param3)))
            {
               if(_loc5_ = param3.§]i§(this.§1!3§))
               {
                  (_loc4_ = new §"S§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§;s§) as Sprite)
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
               if(this.name == §;s§)
               {
                  if(!this.§,S§)
                  {
                  }
               }
               _loc4_.scaleX = this.§1l§;
               _loc4_.scaleY = this.§1l§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6#§ = param1;
         this.§5m§ = param2;
      }
      
      override public function clone() : §-u§
      {
         var _loc1_:§-^§ = new §-^§(time,duration,this.mName,this.§'+§,this.§2!2§,this.§9!3§,this.§1l§);
         _loc1_.§,S§ = this.§,S§;
         _loc1_.§6#§ = this.§6#§;
         _loc1_.§5m§ = this.§5m§;
         return _loc1_;
      }
   }
}
