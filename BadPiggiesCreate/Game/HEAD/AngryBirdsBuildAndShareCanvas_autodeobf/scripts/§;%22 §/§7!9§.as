package §;" §
{
   import §%!0§.§,4§;
   import §&!P§.§^!!§;
   import §7t§.§7a§;
   import §;"7§.§="<§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!9§
   {
      
      private static const §%y§:Number = 1.5;
       
      
      private var §@!z§:String;
      
      private var §?"#§:Vector.<String>;
      
      private var §,!_§:Boolean = false;
      
      private var §""+§:Rectangle;
      
      private var §]2§:Point;
      
      private var §7W§:Point;
      
      public function §7!9§(param1:§,4§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§?"#§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§?"#§.push(_loc3_.toString());
         this.§7W§ = new Point(param2.x,param2.y);
         this.§@!z§ = "PIG_BASIC_SMALL";
         this.§]2§ = new Point(this.§7W§.x / §,4§.§,^§,this.§7W§.y / §,4§.§,^§);
         _loc4_ = param2.object[0];
         this.§""+§ = new Rectangle(this.§7W§.x,this.§7W§.y);
         this.§""+§.top -= §%y§;
         this.§""+§.left -= §%y§;
         this.§""+§.right += §%y§;
         this.§""+§.bottom += §%y§;
      }
      
      public function update(param1:§^!!§) : void
      {
         this.§,!_§ = this.§5H§(param1);
      }
      
      private function §5H§(param1:§^!!§) : Boolean
      {
         var _loc3_:§7a§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §7a§.§^!g§(param1.getObject(_loc2_));
            if(_loc3_.§^_§())
            {
               _loc4_ = _loc3_.§&8§(true);
               if(this.§""+§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §^!G§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§?"#§)
         {
            _loc3_ = §="<§.§[E§.§`d§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§,4§) : void
      {
         if(this.§!9§)
         {
            param1.§=!U§(this.§@!z§,this.§7W§.x,this.§7W§.y);
         }
      }
      
      public function get §6!o§() : Number
      {
         return this.§]2§.x;
      }
      
      public function get §6!e§() : Number
      {
         return this.§]2§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§7W§.clone();
      }
      
      public function get §&9§() : String
      {
         return this.§@!z§;
      }
      
      public function get §!9§() : Boolean
      {
         return this.§,!_§;
      }
   }
}
