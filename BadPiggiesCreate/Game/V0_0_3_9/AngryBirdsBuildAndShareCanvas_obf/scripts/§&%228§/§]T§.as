package §&"8§
{
   import §%%§.§7!O§;
   import §;!<§.§7!f§;
   import §=b§.§-!K§;
   import §]r§.§2"%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]T§
   {
      
      private static const §&?§:Number = 1.5;
       
      
      private var §[R§:String;
      
      private var §+[§:Vector.<String>;
      
      private var §^!O§:Boolean = false;
      
      private var §47§:Rectangle;
      
      private var §#![§:Point;
      
      private var §6!@§:Point;
      
      public function §]T§(param1:§-!K§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§+[§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§+[§.push(_loc3_.toString());
         this.§6!@§ = new Point(param2.x,param2.y);
         this.§[R§ = "PIG_BASIC_SMALL";
         this.§#![§ = new Point(this.§6!@§.x / §-!K§.§"!C§,this.§6!@§.y / §-!K§.§"!C§);
         _loc4_ = param2.object[0];
         this.§47§ = new Rectangle(this.§6!@§.x,this.§6!@§.y);
         this.§47§.top -= §&?§;
         this.§47§.left -= §&?§;
         this.§47§.right += §&?§;
         this.§47§.bottom += §&?§;
      }
      
      public function update(param1:§2"%§) : void
      {
         this.§^!O§ = this.§!"5§(param1);
      }
      
      private function §!"5§(param1:§2"%§) : Boolean
      {
         var _loc3_:§7!O§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §7!O§.§-n§(param1.getObject(_loc2_));
            if(_loc3_.§#!y§())
            {
               _loc4_ = _loc3_.§7n§(true);
               if(this.§47§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §0$§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§+[§)
         {
            _loc3_ = §7!f§.§'!o§.§3!y§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§-!K§) : void
      {
         if(this.§;m§)
         {
            param1.§&d§(this.§[R§,this.§6!@§.x,this.§6!@§.y);
         }
      }
      
      public function get §9!-§() : Number
      {
         return this.§#![§.x;
      }
      
      public function get §8=§() : Number
      {
         return this.§#![§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§6!@§.clone();
      }
      
      public function get §>?§() : String
      {
         return this.§[R§;
      }
      
      public function get §;m§() : Boolean
      {
         return this.§^!O§;
      }
   }
}
