package §%!@§
{
   import §+N§.§``§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import §<!$§.§6f§;
   import §<!$§.Sprite;
   
   public class §+!^§
   {
      
      public static const §#v§:String = "CutScene_Type_Intro";
      
      public static const §&K§:String = "CutScene_Type_Outro";
      
      public static const §!!c§:String = "CutScene_Type_Final_Outro";
       
      
      private var §!v§:§``§;
      
      private var §;!!§:String;
      
      private var §[z§:Vector.<§[!$§>;
      
      private var §&!a§:Number;
      
      private var §4!+§:Number;
      
      private var §,E§:Number;
      
      private var §4X§:Number;
      
      private var §1!?§:Sprite;
      
      private var §4r§:Boolean = true;
      
      private var §5s§:uint;
      
      private var §&<§:Boolean;
      
      private var §#!A§:§6f§;
      
      private var §use §:§6f§;
      
      public function §+!^§(param1:Object, param2:String)
      {
         var _loc3_:§[!$§ = null;
         var _loc4_:Object = null;
         this.§[z§ = new Vector.<§[!$§>();
         super();
         this.§&!a§ = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.§;!!§ = §#v§;
            }
            else if(param2.search("complete") != -1)
            {
               this.§;!!§ = §&K§;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.§]!I§(_loc4_);
               if(_loc3_)
               {
                  this.§[z§.push(_loc3_);
               }
            }
            for each(_loc3_ in this.§[z§)
            {
               if(_loc3_ is §6!M§)
               {
                  (_loc3_ as §6!M§).§^!$§(this.§,E§,this.§4X§);
                  (_loc3_ as §6!M§).§7s§ = this.§4r§;
               }
               else if(_loc3_ is §+!Z§)
               {
                  (_loc3_ as §+!Z§).§^!$§(this.§,E§,this.§4X§);
                  (_loc3_ as §+!Z§).§ `§ = this.§4r§;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!?§;
      }
      
      private function §]!I§(param1:Object) : §[!$§
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case §[!$§.§^!I§:
               return new §+!Z§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case §[!$§.§&$§:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new §6!M§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case §[!$§.§>y§:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new §?!A§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case §[!$§.§9I§:
               return new §<!&§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case §[!$§.END:
               this.§4!+§ = param1.time * 1000;
               break;
            case §[!$§.§>2§:
               this.§,E§ = param1.width;
               this.§4X§ = param1.height;
               break;
            case §[!$§.§<9§:
               this.§4r§ = false;
               break;
            case §[!$§.§7<§:
               this.§4r§ = true;
               break;
            case §[!$§.§3S§:
               this.§5s§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.§1!?§)
         {
            this.§1!?§.dispose();
            this.§1!?§ = null;
         }
         this.§[z§ = null;
      }
      
      public function update(param1:Number) : Boolean
      {
         if(!this.§1!?§)
         {
            this.§1!?§ = new Sprite();
         }
         this.§&!a§ += param1;
         var _loc2_:int = this.§[z§.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.§[z§[_loc2_].update(this.§&!a§,this.§1!?§,this.§!v§))
            {
               this.§[z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§5w§();
         this.§+6§();
         this.§>!?§();
         return this.§&!a§ < this.§4!+§;
      }
      
      private function §>!?§() : void
      {
         var _loc1_:int = §9J§.§?X§.§+T§.height;
         var _loc2_:Number = §7!K§.§=x§;
         var _loc3_:Number = §7!K§.§7Y§;
         var _loc4_:int = (_loc1_ - this.§4X§ * _loc2_) / _loc2_;
         this.§1!?§.y = _loc4_ >> 1;
      }
      
      private function §5w§() : void
      {
         §9J§.§?X§.color = this.§5s§;
      }
      
      private function §+6§() : void
      {
         if(this.§&<§)
         {
            return;
         }
         var _loc1_:Sprite = this.§1!?§.getChildByName(§+!Z§.§'F§) as Sprite;
         if(!_loc1_)
         {
         }
         this.§&<§ = true;
      }
      
      public function clone(param1:§``§) : §+!^§
      {
         var _loc3_:§[!$§ = null;
         var _loc2_:§+!^§ = new §+!^§(null,null);
         for each(_loc3_ in this.§[z§)
         {
            _loc2_.§[z§.push(_loc3_.clone());
         }
         _loc2_.§&!a§ = this.§&!a§;
         _loc2_.§4!+§ = this.§4!+§;
         _loc2_.§,E§ = this.§,E§;
         _loc2_.§4X§ = this.§4X§;
         _loc2_.§4r§ = this.§4r§;
         _loc2_.§5s§ = this.§5s§;
         _loc2_.§;!!§ = this.§;!!§;
         _loc2_.§!v§ = param1;
         return _loc2_;
      }
      
      public function get §=[§() : String
      {
         return this.§;!!§;
      }
      
      public function set §=[§(param1:String) : void
      {
         this.§;!!§ = param1;
      }
   }
}
