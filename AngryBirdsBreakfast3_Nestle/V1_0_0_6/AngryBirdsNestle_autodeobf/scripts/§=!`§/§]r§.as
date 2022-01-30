package §=!`§
{
   import §%z§.§&;§;
   import §%z§.§-i§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§<W§;
   import §]k§.§<S§;
   
   public class §]r§
   {
       
      
      protected var §0M§:Number;
      
      protected var §"Q§:Number;
      
      protected var §7t§:Number;
      
      protected var § ! §:Number;
      
      protected var §>3§:int = -1;
      
      protected var §6!A§:§<W§;
      
      protected var §%!#§:§<W§;
      
      protected var §6S§:§<W§;
      
      protected var §#"3§:int;
      
      protected var §`"1§:Number = 0.0;
      
      protected var § v§:DisplayObject;
      
      protected var §%!M§:Sprite;
      
      protected var §@o§:Number = 0;
      
      protected var §^K§:Number = 0;
      
      protected var §[!K§:Number = 0.0;
      
      protected var §2!&§:Sprite = null;
      
      protected var §,!>§:Boolean = false;
      
      protected var §6w§:Boolean = false;
      
      public function §]r§(param1:§<W§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§6!A§ = param1;
         this.§2!&§ = param2;
         this.§6w§ = param3;
         if(this.§6w§)
         {
            this.§2!&§.scaleX = -this.§2!&§.scaleX;
         }
         this.§+E§();
      }
      
      public function get width() : Number
      {
         return this.§0M§;
      }
      
      public function get height() : Number
      {
         return this.§"Q§;
      }
      
      public function get §@!V§() : Number
      {
         return this.§7t§;
      }
      
      protected function §+E§() : void
      {
         if(this.§6!A§)
         {
            this.§%!#§ = this.§6!A§.getSubAnimation(§^^§.§0U§);
         }
         if(!this.§%!#§)
         {
            this.§%!#§ = this.§6!A§;
         }
         this.setDamageState(0);
         this.§4J§(0);
         if(this.§6S§)
         {
            this.§ v§ = this.§6S§.getFrameWithOffset(0,this.§ v§);
            if(!this.§ v§)
            {
               return;
            }
            this.§0M§ = this.§ v§.width;
            this.§"Q§ = this.§ v§.height;
            if(this.§%!M§)
            {
               this.§%!M§.addChild(this.§ v§);
               this.§2!&§.addChild(this.§%!M§);
            }
            else
            {
               this.§2!&§.addChild(this.§ v§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§6!A§ || this.§%!#§ && this.§%!#§.name == param1)
         {
            return;
         }
         this.§%!#§ = this.§6!A§.getSubAnimation(param1);
         this.§,!>§ = true;
         this.setDamageState(this.§`"1§,param2);
      }
      
      protected function §2]§(param1:Boolean) : void
      {
         this.§[!K§ = 0;
         if(param1 && this.§6S§)
         {
            this.§[!K§ = Math.random() * this.§6S§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§2!&§ = null;
      }
      
      public function §`!]§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§2!&§.addChild(param1);
         }
         else
         {
            this.§2!&§.addChildAt(param1,0);
         }
      }
      
      public function §5!Q§(param1:DisplayObject) : void
      {
         if(this.§2!&§ && param1.parent == this.§2!&§)
         {
            this.§2!&§.removeChild(param1);
         }
      }
      
      public function §4!M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7t§ = 1;
            return;
         }
         this.§7t§ = this.§0M§ / this.§"Q§;
         if(this.§7t§ < 1)
         {
            this.§7t§ = 1 / this.§7t§;
         }
         this.§7t§ = Math.min(11,this.§7t§);
      }
      
      public function §2G§(param1:§-i§) : void
      {
         var _loc2_:§&;§ = null;
         if(param1 is §&;§)
         {
            _loc2_ = §&;§(param1);
            this.§@o§ = -_loc2_.§+!G§.x / §<S§.§;!Q§;
            this.§^K§ = -_loc2_.§+!G§.y / §<S§.§;!Q§;
            if(this.§ v§)
            {
               this.§ v§.x = this.§@o§;
               this.§ v§.y = this.§^K§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§2!&§.scaleX = param1;
         this.§2!&§.scaleY = param1;
         if(this.§6w§)
         {
            this.§2!&§.scaleX = -param1;
         }
      }
      
      protected function §-!P§() : void
      {
      }
      
      public function get § !;§() : Number
      {
         if(this.§6S§)
         {
            return this.§6S§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§6!A§)
         {
            return;
         }
         this.§[!K§ += param1;
         if(this.§[!K§ >= this.§6S§.animationLengthMilliSeconds)
         {
            this.§[!K§ -= this.§6S§.animationLengthMilliSeconds;
            this.§-!P§();
         }
         if(this.§,!>§ || this.§6S§.frameCount > 1)
         {
            this.§,!>§ = false;
            if(this.§6S§)
            {
               this.§ v§ = this.§6S§.getFrameWithOffset(this.§[!K§,this.§ v§);
               this.§ v§.x = this.§@o§;
               this.§ v§.y = this.§^K§;
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§`"1§ = param1;
         if(this.§%!#§)
         {
            _loc3_ = this.§%!#§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§#"3§;
            this.§4J§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §4J§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§%!#§)
         {
            return;
         }
         var _loc3_:§<W§ = this.§6S§;
         var _loc4_:int = this.§%!#§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§#"3§ != param1)
            {
               this.§#"3§ = param1;
               this.§,!>§ = true;
            }
            this.§6S§ = this.§%!#§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§4J§(0,param2);
               return;
            }
            this.§6S§ = this.§%!#§;
         }
         if(this.§6S§ != _loc3_)
         {
            if(param2)
            {
               this.§[!K§ = Math.random() * this.§6S§.animationLengthMilliSeconds;
            }
            else
            {
               this.§[!K§ = 0;
            }
         }
      }
   }
}
