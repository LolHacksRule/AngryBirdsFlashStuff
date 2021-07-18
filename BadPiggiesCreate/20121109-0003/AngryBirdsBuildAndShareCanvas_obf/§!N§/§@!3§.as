package §!N§
{
   import §'V§.§=!r§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@!3§ extends Sprite
   {
      
      public static const §]=§:String = "ParticleStar";
      
      public static const §?H§:String = "ParticlePig";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]=§ = "ParticleStar";
            do
            {
               §?H§ = "ParticlePig";
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected var §4?§:Sprite;
      
      protected var §8+§:Number;
      
      protected var §&g§:Number;
      
      protected var §,!c§:§=!r§;
      
      public function §@!3§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§4?§ = this.§,2§(param1);
               loop1:
               for(; !_loc3_; if(_loc3_ && _loc2_)
               {
                  continue;
               })
               {
                  addChild(this.§4?§);
                  loop2:
                  while(true)
                  {
                     this.mouseEnabled = false;
                     do
                     {
                        this.§4?§.x = -this.§4?§.width / 2;
                        continue loop2;
                     }
                     while(_loc3_ && _loc3_);
                     
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§,!c§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!c§);
                     addr104:
                     while(true)
                     {
                        §§pop().stop();
                        addr105:
                        loop5:
                        while(true)
                        {
                           this.§,!c§ = null;
                           addr74:
                           addr81:
                           while(!(_loc1_ || _loc2_))
                           {
                              continue loop5;
                           }
                        }
                     }
                     addr39:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr56:
                  }
               }
               while(true)
               {
                  removeChild(this.§4?§);
                  while(_loc1_ || this)
                  {
                     this.§4?§ = null;
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr39);
                  }
                  §§goto(addr74);
                  §§goto(addr81);
               }
               §§goto(addr56);
            }
            §§goto(addr104);
         }
         §§goto(addr105);
      }
      
      public function §,2§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §69§.§ 0§(param1);
         _loc2_ = new _loc3_();
         if(!_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc5_ && _loc3_);
            
         }
         return _loc2_;
      }
      
      public function set §1I§(param1:§=!r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!c§ = param1;
         }
      }
      
      public function get §1I§() : §=!r§
      {
         return this.§,!c§;
      }
      
      public function get §?X§() : Number
      {
         return this.§8+§;
      }
      
      public function set §?X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8+§ = param1;
         }
      }
      
      public function get §"b§() : Number
      {
         return this.§&g§;
      }
      
      public function set §"b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&g§ = param1;
         }
      }
   }
}
