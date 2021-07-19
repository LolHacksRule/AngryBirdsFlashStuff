package §^!0§
{
   import flash.events.DataEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&^§ extends EventDispatcher
   {
       
      
      public var mName:String;
      
      public var §7!V§:int;
      
      public var §,8§:Number = 1;
      
      private var §[Q§:Vector.<§4E§>;
      
      private var §'S§:Number;
      
      public function §&^§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr102:
               loop1:
               while(true)
               {
                  this.§7!V§ = param2;
                  while(true)
                  {
                     this.§,8§ = param3;
                     addr60:
                     if(_loc5_ || param2)
                     {
                        if(_loc5_)
                        {
                           return;
                           addr69:
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr105:
         }
         while(true)
         {
            this.§'S§ = this.§,8§;
            while(true)
            {
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr105);
            }
            §§goto(addr102);
            if(!(_loc5_ || param2))
            {
               continue;
            }
            §§goto(addr60);
         }
         §§goto(addr69);
      }
      
      public function §`!Q§() : Boolean
      {
         return this.§[Q§.length < this.§7!V§;
      }
      
      public function §6!#§(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §4E§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[3] = param3;
                        addr139:
                        while(_loc9_)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      private function §<z§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Vector.<§4E§> = null;
         var _loc4_:§4E§ = null;
         var _loc5_:DataEvent = null;
         var _loc2_:§4E§ = §4E§(param1.currentTarget);
         if(_loc7_ || _loc3_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§<z§);
            if(_loc7_)
            {
               §§goto(addr57);
            }
            §§goto(addr63);
         }
         addr57:
         if(this.§[Q§.indexOf(_loc2_) > -1)
         {
            addr63:
            _loc3_ = this.§[Q§.splice(this.§[Q§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).§&$§();
            _loc4_ = null;
            _loc3_ = null;
            _loc5_ = new DataEvent(param1.type,false,false,_loc2_.id);
            if(_loc7_)
            {
               dispatchEvent(_loc5_);
            }
         }
      }
      
      public function §&A§() : Boolean
      {
         return this.§[Q§.length > 0;
      }
      
      public function §=!7§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4E§ = null;
         while(this.§[Q§.length > 0)
         {
            _loc1_ = this.§[Q§[0];
            if(_loc3_ || _loc2_)
            {
               _loc1_.stop();
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_.§6`§();
         }
      }
      
      public function §6!;§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4E§ = null;
         if(_loc5_ || this)
         {
            this.§,8§ = 0;
         }
         for each(_loc1_ in this.§[Q§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§#!b§();
            }
         }
      }
      
      public function §2!X§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§4E§ = null;
         if(!_loc5_)
         {
            this.§,8§ = this.§'S§;
         }
         var _loc3_:* = this.§[Q§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.§6E§();
            }
         }
      }
      
      public function §8!-§(param1:String) : §4E§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§[Q§.length)
            {
               if(_loc3_ && this)
               {
                  continue;
               }
               if(_loc4_)
               {
                  return null;
               }
            }
            else if(§4E§(this.§[Q§[_loc2_]).id == param1)
            {
               break;
            }
            _loc2_++;
         }
         while(_loc4_ || _loc3_);
         
         return §4E§(this.§[Q§[_loc2_]);
      }
   }
}
