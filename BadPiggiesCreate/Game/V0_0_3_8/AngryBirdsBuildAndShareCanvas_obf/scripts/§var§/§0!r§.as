package §var§
{
   import § !V§.§7!P§;
   import §%!&§.§'"-§;
   import §%h§.§5X§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §true§.§>"-§;
   
   public class §0!r§
   {
      
      private static const §=q§:Number = 1.5;
       
      
      private var §>k§:String;
      
      private var §6!k§:Vector.<String>;
      
      private var §3b§:Boolean = false;
      
      private var §-!e§:Rectangle;
      
      private var §=C§:Point;
      
      private var §&&§:Point;
      
      public function §0!r§(param1:§5X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§6!k§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§6!k§.push(_loc3_.toString());
         this.§&&§ = new Point(param2.x,param2.y);
         this.§>k§ = "PIG_BASIC_SMALL";
         this.§=C§ = new Point(this.§&&§.x / §5X§.§,!m§,this.§&&§.y / §5X§.§,!m§);
         _loc4_ = param2.object[0];
         this.§-!e§ = new Rectangle(this.§&&§.x,this.§&&§.y);
         this.§-!e§.top -= §=q§;
         this.§-!e§.left -= §=q§;
         this.§-!e§.right += §=q§;
         this.§-!e§.bottom += §=q§;
      }
      
      public function update(param1:§'"-§) : void
      {
         this.§3b§ = this.§&b§(param1);
      }
      
      private function §&b§(param1:§'"-§) : Boolean
      {
         var _loc3_:§>"-§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §>"-§.§0V§(param1.getObject(_loc2_));
            if(_loc3_.§;!M§())
            {
               _loc4_ = _loc3_.§>!Q§(true);
               if(this.§-!e§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^L§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§6!k§)
         {
            _loc3_ = §7!P§.§9j§.§+"#§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§5X§) : void
      {
         if(this.§7@§)
         {
            param1.§5!e§(this.§>k§,this.§&&§.x,this.§&&§.y);
         }
      }
      
      public function get §]8§() : Number
      {
         return this.§=C§.x;
      }
      
      public function get §>A§() : Number
      {
         return this.§=C§.y;
      }
      
      public function get §+!0§() : String
      {
         return this.§>k§;
      }
      
      public function get §7@§() : Boolean
      {
         return this.§3b§;
      }
   }
}
