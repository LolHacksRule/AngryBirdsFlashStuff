package §4A§
{
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   import §'!&§.DisplayObjectContainer;
   import §'!&§.Sprite;
   import §8o§.§!">§;
   import §8o§.§5"%§;
   import §8o§.§]" §;
   
   public class §0!^§ extends §9!i§
   {
      
      public static const §8!E§:String = "background";
       
      
      private var mName:String;
      
      private var §-!^§:String;
      
      private var §>!J§:Number;
      
      private var §;`§:Number;
      
      private var §^M§:Number;
      
      private var §2!u§:Number;
      
      private var §,g§:Number = 1.0;
      
      private var §9">§:Boolean = true;
      
      public function §0!^§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§-!^§ = param4;
         this.§>!J§ = param5;
         this.§;`§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§,g§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9`§() : String
      {
         return this.§-!^§;
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function set §!_§(param1:Boolean) : void
      {
         this.§9">§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5"%§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§!">§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §]" §.§6?§(this.§9`§,param3)))
            {
               if(_loc5_ = param3.getTexture(this.§9`§))
               {
                  (_loc4_ = new §9!c§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§8!E§) as Sprite)
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
               if(this.name == §8!E§)
               {
                  if(!this.§9">§)
                  {
                  }
               }
               _loc4_.scaleX = this.§,g§;
               _loc4_.scaleY = this.§,g§;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^M§ = param1;
         this.§2!u§ = param2;
      }
      
      override public function clone() : §9!i§
      {
         var _loc1_:§0!^§ = new §0!^§(time,duration,this.mName,this.§-!^§,this.§>!J§,this.§;`§,this.§,g§);
         _loc1_.§9">§ = this.§9">§;
         _loc1_.§^M§ = this.§^M§;
         _loc1_.§2!u§ = this.§2!u§;
         return _loc1_;
      }
   }
}
