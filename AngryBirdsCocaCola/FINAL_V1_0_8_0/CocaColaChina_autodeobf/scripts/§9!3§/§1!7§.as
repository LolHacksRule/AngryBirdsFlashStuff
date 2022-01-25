package §9!3§
{
   import §&!9§.§,,§;
   import §&!9§.DisplayObject;
   import §&!9§.DisplayObjectContainer;
   import §&!9§.Sprite;
   import §48§.§&m§;
   import §48§.§4a§;
   import §48§.§6!Z§;
   
   public class §1!7§ extends §8C§
   {
      
      public static const §9b§:String = "background";
       
      
      private var mName:String;
      
      private var §!_§:String;
      
      private var §!f§:Number;
      
      private var §@;§:Number;
      
      private var §"!R§:Number;
      
      private var §0[§:Number;
      
      private var §&!@§:Number = 1.0;
      
      private var §&,§:Boolean = true;
      
      public function §1!7§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.§!_§ = param4;
         this.§!f§ = param5;
         this.§@;§ = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.§&!@§ = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §;w§() : String
      {
         return this.§!_§;
      }
      
      public function get x() : Number
      {
         return this.§!f§;
      }
      
      public function get y() : Number
      {
         return this.§@;§;
      }
      
      public function set §#!A§(param1:Boolean) : void
      {
         this.§&,§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!Z§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = §&m§.§9!$§(this.§;w§,param3)))
            {
               if(_loc5_ = param3.§-o§(this.§;w§))
               {
                  (_loc4_ = new §,,§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(§9b§) as Sprite)
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
               if(this.name == §9b§)
               {
                  if(!this.§&,§)
                  {
                  }
               }
               _loc4_.scaleX = this.§&!@§;
               _loc4_.scaleY = this.§&!@§;
            }
            return false;
         }
         return true;
      }
      
      public function § !e§(param1:Number, param2:Number) : void
      {
         this.§"!R§ = param1;
         this.§0[§ = param2;
      }
      
      override public function clone() : §8C§
      {
         var _loc1_:§1!7§ = new §1!7§(time,duration,this.mName,this.§!_§,this.§!f§,this.§@;§,this.§&!@§);
         _loc1_.§&,§ = this.§&,§;
         _loc1_.§"!R§ = this.§"!R§;
         _loc1_.§0[§ = this.§0[§;
         return _loc1_;
      }
   }
}
