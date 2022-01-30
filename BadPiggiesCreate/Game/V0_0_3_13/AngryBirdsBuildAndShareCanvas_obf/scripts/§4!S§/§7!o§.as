package §4!S§
{
   import §8!E§.§?!X§;
   import §=%§.§<A§;
   import §?"&§.§5b§;
   import §`"2§.§6!,§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!o§
   {
      
      private static const §&!$§:Number = 1.5;
       
      
      private var §?0§:String;
      
      private var §'v§:Vector.<String>;
      
      private var §0B§:Boolean = false;
      
      private var §!"8§:Rectangle;
      
      private var §2!x§:Point;
      
      private var §%o§:Point;
      
      public function §7!o§(param1:§?!X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§'v§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§'v§.push(_loc3_.toString());
         this.§%o§ = new Point(param2.x,param2.y);
         this.§?0§ = "PIG_BASIC_SMALL";
         this.§2!x§ = new Point(this.§%o§.x / §?!X§.§57§,this.§%o§.y / §?!X§.§57§);
         _loc4_ = param2.object[0];
         this.§!"8§ = new Rectangle(this.§%o§.x,this.§%o§.y);
         this.§!"8§.top -= §&!$§;
         this.§!"8§.left -= §&!$§;
         this.§!"8§.right += §&!$§;
         this.§!"8§.bottom += §&!$§;
      }
      
      public function update(param1:§5b§) : void
      {
         this.§0B§ = this.§;!k§(param1);
      }
      
      private function §;!k§(param1:§5b§) : Boolean
      {
         var _loc3_:§<A§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §<A§.§5y§(param1.getObject(_loc2_));
            if(_loc3_.§-E§())
            {
               _loc4_ = _loc3_.§5!3§(true);
               if(this.§!"8§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §',§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§'v§)
         {
            _loc3_ = §6!,§.§7!?§.§!!k§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§?!X§) : void
      {
         if(this.§%!E§)
         {
            param1.§"q§(this.§?0§,this.§%o§.x,this.§%o§.y);
         }
      }
      
      public function get §`O§() : Number
      {
         return this.§2!x§.x;
      }
      
      public function get §!!h§() : Number
      {
         return this.§2!x§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§%o§.clone();
      }
      
      public function get §'9§() : String
      {
         return this.§?0§;
      }
      
      public function get §%!E§() : Boolean
      {
         return this.§0B§;
      }
   }
}
