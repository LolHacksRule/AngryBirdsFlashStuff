package §="$§
{
   import §%t§.§-!5§;
   import §4!s§.§%I§;
   import §="§.§="-§;
   import §?^§.§0Q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?w§
   {
      
      private static const §0!§:Number = 1.5;
       
      
      private var §3c§:String;
      
      private var §95§:Vector.<String>;
      
      private var §5B§:Boolean = false;
      
      private var § ;§:Rectangle;
      
      private var §]"'§:Point;
      
      private var §+!^§:Point;
      
      public function §?w§(param1:§%I§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         this.§95§ = new Vector.<String>();
         super();
         for each(_loc3_ in param2.reward)
         {
         }
         this.§95§.push(_loc3_.toString());
         this.§+!^§ = new Point(param2.x,param2.y);
         this.§3c§ = "PIG_BASIC_SMALL";
         this.§]"'§ = new Point(this.§+!^§.x / §%I§.§9"4§,this.§+!^§.y / §%I§.§9"4§);
         _loc4_ = param2.object[0];
         this.§ ;§ = new Rectangle(this.§+!^§.x,this.§+!^§.y);
         this.§ ;§.top -= §0!§;
         this.§ ;§.left -= §0!§;
         this.§ ;§.right += §0!§;
         this.§ ;§.bottom += §0!§;
      }
      
      public function update(param1:§="-§) : void
      {
         this.§5B§ = this.§`!<§(param1);
      }
      
      private function §`!<§(param1:§="-§) : Boolean
      {
         var _loc3_:§0Q§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.getObjectCount())
         {
            _loc3_ = §0Q§.§super§(param1.getObject(_loc2_));
            if(_loc3_.§[!Z§())
            {
               _loc4_ = _loc3_.§^g§(true);
               if(this.§ ;§.intersects(_loc4_))
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function § !?§() : Vector.<DisplayObject>
      {
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§95§)
         {
            _loc3_ = §-!5§.§,l§.§2s§(_loc2_);
            _loc1_.push(new Bitmap(_loc3_,"auto",true));
         }
         return _loc1_;
      }
      
      public function activate(param1:§%I§) : void
      {
         if(this.§""4§)
         {
            param1.§-[§(this.§3c§,this.§+!^§.x,this.§+!^§.y);
         }
      }
      
      public function get §>M§() : Number
      {
         return this.§]"'§.x;
      }
      
      public function get §2!E§() : Number
      {
         return this.§]"'§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§+!^§.clone();
      }
      
      public function get §7>§() : String
      {
         return this.§3c§;
      }
      
      public function get §""4§() : Boolean
      {
         return this.§5B§;
      }
   }
}
