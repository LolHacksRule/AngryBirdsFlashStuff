package §+"I§
{
   import § "-§.§6!R§;
   import §!!k§.§0!B§;
   import com.angrybirds.§<!J§;
   import §use§.§-"z§;
   import §use§.Sprite;
   
   public class §#!v§
   {
      
      public static const §;!`§:String = "CutScene_Type_Intro";
      
      public static const §=z§:String = "CutScene_Type_Outro";
      
      public static const §2"X§:String = "CutScene_Type_Final_Outro";
       
      
      private var §9!G§:§0!B§;
      
      private var §+!7§:String;
      
      private var §!!G§:Vector.<§^"C§>;
      
      private var §3!f§:Number;
      
      private var §7a§:Number;
      
      private var §0"e§:Number;
      
      private var §?!O§:Number;
      
      private var §0v§:Sprite;
      
      private var §8P§:Boolean = true;
      
      private var §=!z§:uint;
      
      private var §,K§:Boolean;
      
      private var §"Q§:§-"z§;
      
      private var §2"j§:§-"z§;
      
      public function §#!v§(param1:Object, param2:String)
      {
         var _loc3_:§^"C§ = null;
         var _loc4_:Object = null;
         this.§!!G§ = new Vector.<§^"C§>();
         super();
         this.§3!f§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§+!7§ = §;!`§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§+!7§ = §=z§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§8#3§(_loc4_);
               if(_loc3_)
               {
                  this.§!!G§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§!!G§)
            {
               if(_loc3_ is §#s§)
               {
                  (_loc3_ as §#s§).setSize(this.§0"e§,this.§?!O§);
                  (_loc3_ as §#s§).§`V§ = this.§8P§;
               }
               else if(_loc3_ is §0"f§)
               {
                  (_loc3_ as §0"f§).setSize(this.§0"e§,this.§?!O§);
                  (_loc3_ as §0"f§).§+!8§ = this.§8P§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      private function §8#3§(param1:Object) : §^"C§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §^"C§.§!##§:
               return new §0"f§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §^"C§.§<!3§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §#s§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §^"C§.§>!R§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §]!>§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §^"C§.§@z§:
               return new §#!R§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §^"C§.§7"v§:
               this.§7a§ = param1.time * 1000;
               break;
            case §^"C§.§ a§:
               this.§0"e§ = param1.width;
               this.§?!O§ = param1.height;
               break;
            case §^"C§.§#r§:
               this.§8P§ = false;
               break;
            case §^"C§.§;!M§:
               this.§8P§ = true;
               break;
            case §^"C§.§&"M§:
               this.§=!z§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
         this.§!!G§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§0v§)
         {
            this.§0v§ = new Sprite();
         }
         this.§3!f§ += param1;
         var _loc2_:int = this.§!!G§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§!!G§[_loc2_].update(this.§3!f§,this.§0v§,this.§9!G§))
            {
               this.§!!G§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§ P§();
         this.§[!2§();
         this.§-#&§();
         return this.§3!f§ < this.§7a§;
      }
      
      private function §-#&§() : void
      {
         var _loc1_:int = §6!R§.§8t§.height;
         var _loc2_:Number = §<!J§.§^K§;
         var _loc3_:Number = §<!J§.§`1§;
         var _loc4_:int = (_loc1_ - this.§?!O§ * _loc2_) / _loc2_;
         this.§0v§.y = _loc4_ >> 1;
      }
      
      private function § P§() : void
      {
         §6!R§.§+!d§.color = this.§=!z§;
      }
      
      private function §[!2§() : void
      {
         if(this.§,K§)
         {
            return;
         }
         var _loc1_:Sprite = this.§0v§.getChildByName(§0"f§.§8!Z§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§,K§ = true;
      }
      
      public function clone(param1:§0!B§) : §#!v§
      {
         var _loc3_:§^"C§ = null;
         var _loc2_:§#!v§ = new §#!v§(null,null);
         for each(_loc3_ in this.§!!G§)
         {
            _loc2_.§!!G§.push(_loc3_.clone());
         }
         _loc2_.§3!f§ = this.§3!f§;
         _loc2_.§7a§ = this.§7a§;
         _loc2_.§0"e§ = this.§0"e§;
         _loc2_.§?!O§ = this.§?!O§;
         _loc2_.§8P§ = this.§8P§;
         _loc2_.§=!z§ = this.§=!z§;
         _loc2_.§+!7§ = this.§+!7§;
         _loc2_.§9!G§ = param1;
         return _loc2_;
      }
      
      public function get §do §() : String
      {
         return this.§+!7§;
      }
      
      public function set §do §(param1:String) : void
      {
         this.§+!7§ = param1;
      }
   }
}
