package §`!K§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §&y§
   {
       
      
      public var mName:String;
      
      public var §`r§:int;
      
      public var §8K§:Number = 1;
      
      private var §4!]§:Vector.<§<9§>;
      
      private var §>!S§:Number;
      
      public function §&y§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            while(true)
            {
               this.mName = param1;
            }
            addr94:
         }
         loop1:
         while(true)
         {
            this.§`r§ = param2;
            loop2:
            while(true)
            {
               this.§8K§ = param3;
               while(_loc4_)
               {
                  this.§>!S§ = this.§8K§;
                  do
                  {
                     this.§4!]§ = new Vector.<§<9§>();
                  }
                  while(_loc5_ && this);
                  
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue loop2;
                  }
                  if(!_loc5_)
                  {
                     break loop1;
                  }
                  §§goto(addr94);
               }
               continue loop1;
            }
         }
      }
      
      public function §>q§() : Boolean
      {
         return this.§4!]§.length < this.§`r§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §<9§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            §§push(param3);
            if(!_loc7_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc7_ && param2))
                  {
                     addr36:
                     §§push(this.§>!S§);
                     if(!_loc7_)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                  }
               }
               var _loc4_:SoundTransform = new SoundTransform(param3);
               var _loc5_:SoundChannel;
               if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
               {
                  if(!(_loc7_ && param1))
                  {
                     return null;
                  }
               }
               var _loc6_:§<9§ = new §<9§(_loc5_,this.§3<§);
               if(!_loc7_)
               {
                  if(this.§8K§ == 0)
                  {
                     while(true)
                     {
                        _loc6_.§+!;§();
                        addr117:
                        while(true)
                        {
                        }
                        addr98:
                        if(_loc7_)
                        {
                           continue;
                        }
                        return _loc6_;
                        addr110:
                     }
                  }
                  while(true)
                  {
                     this.§4!]§.push(_loc6_);
                     if(!_loc8_)
                     {
                        continue;
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      private function §3<§(param1:§<9§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§<9§> = null;
         var _loc3_:§<9§ = null;
         if(_loc5_ || param1)
         {
            if(this.§4!]§.indexOf(param1) > -1)
            {
               addr46:
               _loc2_ = this.§4!]§.splice(this.§4!]§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(!(_loc4_ && _loc2_))
               {
                  _loc3_.§4b§();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §#I§() : Boolean
      {
         return this.§4!]§.length > 0;
      }
      
      public function § &§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§<9§ = null;
         while(this.§4!]§.length > 0)
         {
            _loc1_ = this.§4!]§[0];
            if(!_loc2_)
            {
               _loc1_.stop();
               if(_loc3_ || this)
               {
                  _loc1_.§+q§();
               }
            }
         }
      }
      
      public function § §() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<9§ = null;
         if(_loc4_ || _loc2_)
         {
            this.§8K§ = 0;
         }
         for each(_loc1_ in this.§4!]§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.§+!;§();
            }
         }
      }
      
      public function §@!N§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<9§ = null;
         if(!_loc5_)
         {
            this.§8K§ = this.§>!S§;
         }
         for each(_loc1_ in this.§4!]§)
         {
            if(_loc4_)
            {
               _loc1_.§>! §();
            }
         }
      }
   }
}
