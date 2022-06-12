package §8" §
{
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7z§
   {
      
      private static const §6!h§:Number = 1.5;
       
      
      private var §>z§:String;
      
      private var § !F§:Vector.<String>;
      
      private var §>!T§:Boolean = false;
      
      private var §0#§:Rectangle;
      
      private var §3!W§:Point;
      
      private var §3!r§:Point;
      
      public function §7z§(param1:§!w§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§ !F§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§ !F§.push(_loc3_.toString());
         this.§3!r§ = new Point(param2.x,param2.y);
         this.§>z§ = "PIG_BASIC_SMALL";
         this.§3!W§ = new Point(this.§3!r§.x / §!w§.§4!-§,this.§3!r§.y / §!w§.§4!-§);
         _loc4_ = param2.object[0];
         this.§0#§ = new Rectangle(this.§3!r§.x,this.§3!r§.y);
         this.§0#§.top -= §6!h§;
         this.§0#§.left -= §6!h§;
         this.§0#§.right += §6!h§;
         this.§0#§.bottom += §6!h§;
      }
      
      public function update(param1:§?"-§) : void
      {
         this.§>!T§ = this.§,!A§(param1);
      }
      
      private function §,!A§(param1:§?"-§) : Boolean
      {
         var _loc3_:§=q§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §=q§.§0"§(param1.getObject(_loc2_));
            if(_loc3_.§@!i§())
            {
               _loc4_ = _loc3_.§]!&§(true);
               if(this.§0#§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §#!=§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§ !F§)
         {
            _loc3_ = §7!P§.§2=§.§"k§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§!w§) : void
      {
         if(this.§%!0§)
         {
            param1.§8!h§(this.§>z§,this.§3!r§.x,this.§3!r§.y);
         }
      }
      
      public function get §&U§() : Number
      {
         return this.§3!W§.x;
      }
      
      public function get §`!3§() : Number
      {
         return this.§3!W§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§3!r§.clone();
      }
      
      public function get §9!p§() : String
      {
         return this.§>z§;
      }
      
      public function get §%!0§() : Boolean
      {
         return this.§>!T§;
      }
   }
}
