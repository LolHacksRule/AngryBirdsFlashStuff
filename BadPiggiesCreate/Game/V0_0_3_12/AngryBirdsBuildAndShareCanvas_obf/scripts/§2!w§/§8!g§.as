package §2!w§
{
   import §1!N§.§"!k§;
   import §4!#§.§[R§;
   import §@!-§.§3"1§;
   import §[B§.§"d§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!g§
   {
      
      private static const §=!9§:Number = 1.5;
       
      
      private var §79§:String;
      
      private var §=!N§:Vector.<String>;
      
      private var § !#§:Boolean = false;
      
      private var §8!D§:Rectangle;
      
      private var §5x§:Point;
      
      private var §,'§:Point;
      
      public function §8!g§(param1:§"d§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§=!N§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§=!N§.push(_loc3_.toString());
         this.§,'§ = new Point(param2.x,param2.y);
         this.§79§ = "PIG_BASIC_SMALL";
         this.§5x§ = new Point(this.§,'§.x / §"d§.§2!]§,this.§,'§.y / §"d§.§2!]§);
         _loc4_ = param2.object[0];
         this.§8!D§ = new Rectangle(this.§,'§.x,this.§,'§.y);
         this.§8!D§.top -= §=!9§;
         this.§8!D§.left -= §=!9§;
         this.§8!D§.right += §=!9§;
         this.§8!D§.bottom += §=!9§;
      }
      
      public function update(param1:§[R§) : void
      {
         this.§ !#§ = this.§'X§(param1);
      }
      
      private function §'X§(param1:§[R§) : Boolean
      {
         var _loc3_:§"!k§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §"!k§.§2"5§(param1.getObject(_loc2_));
            if(_loc3_.§2!A§())
            {
               _loc4_ = _loc3_.§#1§(true);
               if(this.§8!D§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §2!E§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§=!N§)
         {
            _loc3_ = §3"1§.§ "!§.§!5§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§"d§) : void
      {
         if(this.§!! §)
         {
            param1.§=!%§(this.§79§,this.§,'§.x,this.§,'§.y);
         }
      }
      
      public function get §8J§() : Number
      {
         return this.§5x§.x;
      }
      
      public function get §;!<§() : Number
      {
         return this.§5x§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§,'§.clone();
      }
      
      public function get §[!Y§() : String
      {
         return this.§79§;
      }
      
      public function get §!! §() : Boolean
      {
         return this.§ !#§;
      }
   }
}
