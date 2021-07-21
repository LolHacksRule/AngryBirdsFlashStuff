package §"v§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §%=§
   {
       
      
      public var §8!7§:BitmapData = null;
      
      public var §"E§:String = null;
      
      public var §8b§:Number = 0;
      
      public var §-!A§:Number = 0;
      
      public var §&"1§:Number = 0;
      
      public var §,!n§:Number = 0;
      
      public var §[Z§:Number = 0;
      
      public var §9!#§:String = null;
      
      public var §3!y§:String = null;
      
      public var §-r§:String = null;
      
      public var §-b§:String = null;
      
      private var §#!§:String = null;
      
      public var §9!7§:String = null;
      
      public var §]!Q§:Sprite = null;
      
      public function §%=§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            do
            {
               this.§]!Q§ = new Sprite();
            }
            while(!_loc1_);
            
         }
      }
      
      public static function §`!S§(param1:Object) : §%=§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%=§ = new §%=§();
         if(_loc4_)
         {
            _loc2_.§"E§ = param1.id;
         }
         while(true)
         {
            _loc2_.§8b§ = param1.publishTime;
            while(true)
            {
               _loc2_.§-!A§ = param1.numRatings;
               loop2:
               while(true)
               {
                  _loc2_.§&"1§ = param1.numStars;
                  addr139:
                  while(true)
                  {
                     _loc2_.§,!n§ = param1.numCompleted;
                     continue loop2;
                  }
               }
            }
            if(_loc4_ || §%=§)
            {
               return _loc2_;
            }
         }
      }
      
      public static function §7!`§(param1:String) : §%=§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%=§ = new §%=§();
         if(!_loc4_)
         {
            _loc2_.§"E§ = param1;
         }
         return _loc2_;
      }
      
      public function §1"<§(param1:Bitmap) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!7§ = param1.bitmapData;
         }
         do
         {
            this.§]!Q§.addChild(param1);
         }
         while(_loc2_);
         
      }
      
      public function § M§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.thumbnail.addChild(param1.currentTarget.loader as DisplayObject);
         }
      }
      
      public function get §;!^§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#!§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§#!§);
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return "Untitled";
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function get author() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-r§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  addr50:
                  §§push(this.§-r§);
                  if(_loc2_)
                  {
                     addr55:
                     §§push(§§pop());
                  }
                  §§goto(addr55);
               }
               else
               {
                  return "";
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      public function get §'!V§() : BitmapData
      {
         return this.§8!7§;
      }
      
      public function get authorId() : String
      {
         return this.§-b§;
      }
      
      public function get thumbnail() : Sprite
      {
         return this.§]!Q§;
      }
   }
}
