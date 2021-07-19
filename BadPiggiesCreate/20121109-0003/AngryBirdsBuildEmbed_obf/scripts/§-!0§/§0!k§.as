package §-!0§
{
   import §8!Q§.§<!R§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   public class §0!k§
   {
       
      
      public var §19§:BitmapData = null;
      
      public var §%I§:String = null;
      
      public var §"§:Number = 0;
      
      public var §09§:Number = 0;
      
      public var §?h§:Number = 0;
      
      public var § "§:Number = 0;
      
      public var §37§:Number = 0;
      
      public var §-g§:String = null;
      
      public var §7G§:String = null;
      
      public var §%e§:String = null;
      
      public var §1!L§:String = null;
      
      private var §-6§:String = null;
      
      public var §`l§:String = null;
      
      public var §!!k§:Sprite = null;
      
      public function §0!k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               this.§!!k§ = new Sprite();
            }
         }
      }
      
      public static function §7!`§(param1:Object) : §0!k§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Loader = null;
         var _loc2_:§0!k§ = new §0!k§();
         if(!(_loc5_ && _loc2_))
         {
            if((param1.thumbnail as String).indexOf("data:image/png;base64") != -1)
            {
               §<!R§.§,7§(param1.thumbnail,_loc2_.§6!q§);
               if(!(_loc5_ && §0!k§))
               {
                  addr83:
                  _loc2_.§%I§ = param1.id;
                  if(_loc4_)
                  {
                     _loc2_.§"§ = param1.publishTime;
                     _loc2_.§09§ = param1.numRatings;
                     _loc2_.§?h§ = param1.numStars;
                     _loc2_.§ "§ = param1.numCompleted;
                     if(_loc4_)
                     {
                        addr107:
                        _loc2_.§37§ = param1.highscore;
                        if(!(_loc5_ && §0!k§))
                        {
                           addr128:
                           _loc2_.§-g§ = param1.topScorer;
                           _loc2_.§7G§ = param1.topScorerName;
                        }
                     }
                     _loc2_.§%e§ = param1.author;
                     _loc2_.§1!L§ = param1.authorId;
                     if(!_loc5_)
                     {
                        _loc2_.§-6§ = param1.name;
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr107);
               }
               addr150:
               _loc2_.§`l§ = param1.description;
               return _loc2_;
            }
            _loc3_ = new Loader();
            if(!_loc5_)
            {
               _loc3_.contentLoaderInfo.addEventListener(Event.COMPLETE,_loc2_.§=!B§);
               if(!_loc5_)
               {
                  _loc3_.load(new URLRequest(param1.thumbnail));
               }
            }
            §§goto(addr83);
         }
         §§goto(addr128);
      }
      
      public static function §=!O§(param1:String) : §0!k§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0!k§ = new §0!k§();
         if(_loc3_)
         {
            _loc2_.§%I§ = param1;
         }
         return _loc2_;
      }
      
      public function §6!q§(param1:Bitmap) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§19§ = param1.bitmapData;
            if(_loc2_)
            {
               this.§!!k§.addChild(param1);
            }
         }
      }
      
      public function §=!B§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
         }
      }
      
      public function get §'!#§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§-6§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(this.§-6§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         addr50:
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§%I§;
      }
      
      public function get author() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§%e§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  addr45:
                  §§push(this.§%e§);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr54:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push("");
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr45);
      }
      
      public function get §`^§() : BitmapData
      {
         return this.§19§;
      }
      
      public function get authorId() : String
      {
         return this.§1!L§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§!!k§;
      }
   }
}
