package §!!0§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §=!K§:int;
      
      public var §@`§:Number = 1;
      
      private var §1!i§:Vector.<§?!j§>;
      
      private var §-!c§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§=!K§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§@`§ = param3;
                     while(_loc5_)
                     {
                        while(_loc5_ || this)
                        {
                           this.§1!i§ = new Vector.<§?!j§>();
                           if(!(_loc4_ && param1))
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§-!c§ = this.§@`§;
            §§goto(addr80);
         }
         §§goto(addr64);
      }
      
      public function §0!S§() : Boolean
      {
         return this.§1!i§.length < this.§=!K§;
      }
      
      public function §-!h§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §?!j§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param3);
            if(_loc9_ || this)
            {
               if(§§pop() < 0)
               {
                  if(_loc9_ || param1)
                  {
                     §§push(this.§-!c§);
                     if(_loc9_)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                     addr42:
                     var _loc5_:SoundTransform = new SoundTransform(param3);
                     var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
                     if(!(_loc8_ && param2))
                     {
                        if(_loc6_ == null)
                        {
                           if(_loc9_ || param2)
                           {
                              return null;
                           }
                        }
                     }
                     var _loc7_:§?!j§ = new §?!j§(_loc6_,this.§%Y§,param4);
                     if(!(_loc8_ && param1))
                     {
                        if(this.§@`§ == 0)
                        {
                           while(true)
                           {
                              _loc7_.§?I§();
                              addr132:
                              while(true)
                              {
                              }
                           }
                           addr129:
                        }
                        while(true)
                        {
                           this.§1!i§.push(_loc7_);
                           if(_loc8_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                           §§goto(addr129);
                        }
                        return _loc7_;
                     }
                     §§goto(addr132);
                  }
               }
               §§goto(addr42);
            }
            §§goto(addr40);
         }
         §§goto(addr42);
      }
      
      private function §%Y§(param1:§?!j§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§?!j§> = null;
         var _loc3_:§?!j§ = null;
         if(_loc5_ || param1)
         {
            if(this.§1!i§.indexOf(param1) > -1)
            {
               addr56:
               _loc2_ = this.§1!i§.splice(this.§1!i§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(!_loc4_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §?§() : Boolean
      {
         return this.§1!i§.length > 0;
      }
      
      public function §%!V§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?!j§ = null;
         while(this.§1!i§.length > 0)
         {
            _loc1_ = this.§1!i§[0];
            if(!_loc3_)
            {
               _loc1_.stop();
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_.§&p§();
               }
            }
         }
      }
      
      public function §!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?!j§ = null;
         if(_loc5_)
         {
            this.§@`§ = 0;
         }
         for each(_loc1_ in this.§1!i§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§?I§();
            }
         }
      }
      
      public function §&!,§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?!j§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§@`§ = this.§-!c§;
         }
         for each(_loc1_ in this.§1!i§)
         {
            if(_loc5_)
            {
               _loc1_.§6!K§();
            }
         }
      }
   }
}
