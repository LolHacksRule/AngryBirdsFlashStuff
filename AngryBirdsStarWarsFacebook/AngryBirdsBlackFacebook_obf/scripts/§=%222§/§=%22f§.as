package §="2§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §="f§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §0"o§:int;
      
      public var §4!=§:Number = 1;
      
      private var §,">§:Vector.<§4!5§>;
      
      private var §5!4§:Number;
      
      public function §="f§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§0"o§ = param2;
                  §§goto(addr86);
               }
            }
         }
         addr86:
         while(true)
         {
            this.§4!=§ = param3;
            do
            {
               this.§5!4§ = this.§4!=§;
               do
               {
                  this.§,">§ = new Vector.<§4!5§>();
               }
               while(_loc5_);
               
            }
            while(!_loc4_);
            
            if(!_loc5_)
            {
               if(_loc4_ || param2)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function §>#H§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4!5§ = null;
         if(_loc3_)
         {
            if(this.§,">§.length < this.§0"o§)
            {
               if(_loc3_ || this)
               {
                  return true;
               }
            }
         }
         var _loc1_:* = int(this.§,">§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,">§[_loc1_];
            if(_loc3_ || _loc2_)
            {
               if(_loc2_.§3"o§ <= 0)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc2_.§!"^§();
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc1_);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
            }
         }
         return this.§,">§.length < this.§0"o§;
      }
      
      public function §"#_§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4!5§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr183:
                  while(true)
                  {
                     addr167:
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §@"e§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Vector.<§4!5§> = null;
         var _loc4_:§4!5§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4!5§ = §4!5§(param1.currentTarget);
         if(!(_loc7_ && this))
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§@"e§);
            if(!_loc7_)
            {
               §§goto(addr56);
            }
            §§goto(addr62);
         }
         addr56:
         if(this.§,">§.indexOf(_loc2_) > -1)
         {
            addr62:
            _loc3_ = this.§,">§.splice(this.§,">§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(!_loc7_)
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §<"M§() : Boolean
      {
         return this.§,">§.length > 0;
      }
      
      public function §0"#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4!5§ = null;
         while(this.§,">§.length > 0)
         {
            _loc1_ = this.§,">§[0];
            if(!_loc2_)
            {
               _loc1_.§!"^§();
            }
         }
      }
      
      public function §3!o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!5§ = null;
         if(!_loc4_)
         {
            this.§4!=§ = 0;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§,">§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.§^"w§();
            }
         }
      }
      
      public function §!!j§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4!5§ = null;
         if(!_loc4_)
         {
            this.§4!=§ = this.§5!4§;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§,">§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.§<#D§();
            }
         }
      }
      
      public function get §9"H§() : int
      {
         return this.§,">§.length;
      }
      
      public function §0<§(param1:String) : §4!5§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,">§.length)
            {
               if(_loc3_)
               {
                  break;
               }
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§4!5§(this.§,">§[_loc2_]).id == param1)
            {
               §§goto(addr74);
            }
            §§goto(addr48);
         }
         if(_loc3_ || _loc2_)
         {
            return null;
         }
         addr74:
         return §4!5§(this.§,">§[_loc2_]);
      }
      
      public function §use§(param1:int) : §4!5§
      {
         return this.§,">§[param1];
      }
   }
}
