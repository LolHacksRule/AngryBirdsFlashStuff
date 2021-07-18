package §>X§
{
   import §&"'§.§3^§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;!&§ extends Sprite
   {
      
      public static const §9G§:String = "ParticleStar";
      
      public static const §3!O§:String = "ParticlePig";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §9G§ = "ParticleStar";
            do
            {
               §3!O§ = "ParticlePig";
            }
            while(!(_loc2_ || §;!&§));
            
         }
      }
      
      protected var §7c§:Sprite;
      
      protected var §1!6§:Number;
      
      protected var §[!]§:Number;
      
      protected var §8!g§:§3^§;
      
      public function §;!&§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§7c§ = this.§8"'§(param1);
               addr95:
               while(!_loc3_)
               {
               }
            }
         }
         while(true)
         {
            addChild(this.§7c§);
            while(!_loc3_)
            {
               this.mouseEnabled = false;
               while(!_loc3_)
               {
                  this.§7c§.x = -this.§7c§.width / 2;
                  while(_loc2_ || _loc2_)
                  {
                     this.§7c§.y = -this.§7c§.height / 2;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
            §§goto(addr95);
         }
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!g§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8!g§);
                     addr99:
                     while(true)
                     {
                        §§pop().stop();
                        addr100:
                        while(true)
                        {
                           this.§8!g§ = null;
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  removeChild(this.§7c§);
                  do
                  {
                     this.§7c§ = null;
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(_loc1_)
                  {
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr69);
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr100);
      }
      
      public function §8"'§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>!]§.§1!8§(param1);
         _loc2_ = new _loc3_();
         if(!_loc5_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!(_loc4_ || this));
            
         }
         return _loc2_;
      }
      
      public function set §#!T§(param1:§3^§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!g§ = param1;
         }
      }
      
      public function get §#!T§() : §3^§
      {
         return this.§8!g§;
      }
      
      public function get §6U§() : Number
      {
         return this.§1!6§;
      }
      
      public function set §6U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!6§ = param1;
         }
      }
      
      public function get §0!0§() : Number
      {
         return this.§[!]§;
      }
      
      public function set §0!0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§[!]§ = param1;
         }
      }
   }
}
