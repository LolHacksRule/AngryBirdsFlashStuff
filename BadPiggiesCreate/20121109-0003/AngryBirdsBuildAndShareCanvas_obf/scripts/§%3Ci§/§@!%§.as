package §<i§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §@!%§
   {
       
      
      public var §&G§:BitmapData = null;
      
      public var §&&§:String = null;
      
      public var § b§:Number = 0;
      
      public var §8D§:Number = 0;
      
      public var §<"<§:Number = 0;
      
      public var §<M§:Number = 0;
      
      public var §2!7§:Number = 0;
      
      public var §>!i§:String = null;
      
      public var §[I§:String = null;
      
      public var §7!2§:String = null;
      
      public var §2^§:String = null;
      
      private var §?]§:String = null;
      
      public var §]B§:String = null;
      
      public var §1k§:Sprite = null;
      
      public function §@!%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         do
         {
            this.§1k§ = new Sprite();
         }
         while(!_loc1_);
         
      }
      
      public static function §,!W§(param1:Object) : §@!%§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@!%§ = new §@!%§();
         if(_loc4_ || param1)
         {
            _loc2_.§&&§ = param1.id;
            loop0:
            while(true)
            {
               _loc2_.§ b§ = param1.publishTime;
               while(true)
               {
                  _loc2_.§8D§ = param1.numRatings;
                  addr155:
                  addr129:
                  loop4:
                  for(; !(_loc3_ && _loc2_); loop6:
                  for(; !(_loc3_ && _loc2_); if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  },_loc2_.§2^§ = param1.authorId,while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  },§§goto(addr123))
                  {
                     while(true)
                     {
                        _loc2_.§[I§ = param1.topScorerName;
                        loop8:
                        while(true)
                        {
                           _loc2_.§7!2§ = param1.author;
                           addr74:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 continue loop6;
                              }
                              continue loop8;
                           }
                           continue loop6;
                        }
                     }
                     return _loc2_;
                  })
                  {
                     _loc2_.§2!7§ = param1.highscore;
                     while(true)
                     {
                        _loc2_.§>!i§ = param1.topScorer;
                        continue loop4;
                     }
                  }
                  while(true)
                  {
                     _loc2_.§<"<§ = param1.numStars;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public static function §[2§(param1:String) : §@!%§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@!%§ = new §@!%§();
         if(!_loc4_)
         {
            _loc2_.§&&§ = param1;
         }
         return _loc2_;
      }
      
      public function §+x§(param1:Bitmap) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§&G§ = param1.bitmapData;
         }
         do
         {
            this.§1k§.addChild(param1);
         }
         while(_loc3_ && param1);
         
      }
      
      public function §6!C§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
         }
      }
      
      public function get §%!d§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§?]§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr59);
                  }
               }
               return "Untitled";
            }
            §§goto(addr59);
         }
         addr59:
         return this.§?]§;
      }
      
      public function get id() : String
      {
         return this.§&&§;
      }
      
      public function get author() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§7!2§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  addr34:
                  §§push(this.§7!2§);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr53:
                     return §§pop();
                  }
               }
               else
               {
                  return "";
               }
            }
            §§goto(addr53);
         }
         §§goto(addr34);
      }
      
      public function get §%X§() : BitmapData
      {
         return this.§&G§;
      }
      
      public function get authorId() : String
      {
         return this.§2^§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§1k§;
      }
   }
}
