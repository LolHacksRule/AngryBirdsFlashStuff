package §1z§
{
   import § ""§.§6!u§;
   import §1!v§.§@%§;
   import §@!P§.§?"%§;
   import §[_§.§2!B§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@k§
   {
      
      private static const §2p§:Number = 1.5;
       
      
      private var §<r§:String;
      
      private var §4!M§:Vector.<String>;
      
      private var §<!g§:Boolean = false;
      
      private var §8"#§:Rectangle;
      
      private var §`#§:Point;
      
      private var §-W§:Point;
      
      public function §@k§(param1:§@%§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§4!M§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§4!M§.push(_loc3_.toString());
         this.§-W§ = new Point(param2.x,param2.y);
         this.§<r§ = "PIG_BASIC_SMALL";
         this.§`#§ = new Point(this.§-W§.x / §@%§.§?k§,this.§-W§.y / §@%§.§?k§);
         _loc4_ = param2.object[0];
         this.§8"#§ = new Rectangle(this.§-W§.x,this.§-W§.y);
         this.§8"#§.top -= §2p§;
         this.§8"#§.left -= §2p§;
         this.§8"#§.right += §2p§;
         this.§8"#§.bottom += §2p§;
      }
      
      public function update(param1:§6!u§) : void
      {
         this.§<!g§ = this.§7!`§(param1);
      }
      
      private function §7!`§(param1:§6!u§) : Boolean
      {
         var _loc3_:§?"%§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §?"%§.§3! §(param1.getObject(_loc2_));
            if(_loc3_.§^6§())
            {
               _loc4_ = _loc3_.§[!V§(true);
               if(this.§8"#§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §[!E§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§4!M§)
         {
            _loc3_ = §2!B§.§if §.§#"6§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§@%§) : void
      {
         if(this.§2!t§)
         {
            param1.§^!L§(this.§<r§,this.§-W§.x,this.§-W§.y);
         }
      }
      
      public function get §3f§() : Number
      {
         return this.§`#§.x;
      }
      
      public function get §?-§() : Number
      {
         return this.§`#§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§-W§.clone();
      }
      
      public function get §!" §() : String
      {
         return this.§<r§;
      }
      
      public function get §2!t§() : Boolean
      {
         return this.§<!g§;
      }
   }
}
