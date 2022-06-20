package §1#W§
{
   import flash.events.Event;
   
   public class §0#>§
   {
       
      
      private var §7#v§:String = "";
      
      private var §`5§:String = "";
      
      private var §&_§:String = "";
      
      private var §<!#§:Boolean = false;
      
      private var §9s§:Vector.<§[",§>;
      
      private var §^""§:§]#M§;
      
      private var §+"D§:Number = 0;
      
      private var §=#y§:String;
      
      public function §0#>§()
      {
         super();
         this.§^""§ = new §]#M§();
         this.§9s§ = new Vector.<§[",§>();
         §!#&§.addEventListener(§6"4§.§7$"§,this.§1_§);
         §!#&§.addEventListener(§9#1§.§&"S§,this.§]",§);
         §!#&§.addEventListener(§9#1§.§!!u§,this.§]",§);
      }
      
      private function §?d§() : §="D§
      {
         var _loc1_:§5I§ = §!#&§.§3!c§(this.§`5§);
         return _loc1_.§8]§(this.§7#v§);
      }
      
      private function §=!g§() : void
      {
         this.§^""§.removeEventListener(Event.COMPLETE,this.§?q§);
         this.§^""§.removeEventListener(Event.COMPLETE,this.§!#k§);
         this.§^""§.§0#c§(this.§7#v§);
      }
      
      private function §"!b§(param1:String) : §[",§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9s§.length)
         {
            if(param1 == this.§9s§[_loc2_].songId)
            {
               return this.§9s§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §`Y§() : Boolean
      {
         if(§!#&§.§3!c§(this.§`5§) != null)
         {
            §!#&§.§4#J§(this.§`5§);
            return true;
         }
         return false;
      }
      
      public function §&k§(param1:§[",§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9s§.length)
            {
               if(param1.songId == this.§9s§[_loc3_].songId)
               {
                  this.§9s§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§9s§.push(param1);
      }
      
      public function §`#G§() : void
      {
         this.§=!g§();
         this.§`Y§();
         this.§7#v§ = "";
         this.§`5§ = "";
      }
      
      public function §;"@§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§="D§ = null;
         if(this.§7#v§ == param1 && !param2)
         {
            return;
         }
         this.§<!#§ = param2;
         this.§&_§ = param1;
         if(§!#&§.§3!c§(this.§`5§) != null && §!#&§.§3!c§(this.§`5§).isPlaying())
         {
            _loc3_ = this.§?d§();
            this.§=!g§();
            this.§^""§.addEventListener(Event.COMPLETE,this.§?q§);
            this.§^""§.§!y§(this.§7#v§,_loc3_,0.5);
         }
         else
         {
            this.§?q§();
         }
      }
      
      public function §@#b§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§7#v§ == param1 && !param3)
         {
            return;
         }
         this.§<!#§ = false;
         this.§`#G§();
         var _loc4_:§[",§;
         if((_loc4_ = this.§"!b§(param1)) == null)
         {
            return;
         }
         this.§7#v§ = _loc4_.songId;
         this.§`5§ = _loc4_.§,#s§;
         this.§&_§ = "";
         var _loc5_:§5I§;
         if(!(_loc5_ = §!#&§.§3!c§(this.§`5§)))
         {
            §!#&§.§!"k§(this.§`5§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§=#y§ == this.§7#v§)
         {
            _loc6_ = this.§+"D§;
            param2 = true;
         }
         this.§=#y§ = "";
         this.§+"D§ = 0;
         var _loc7_:§="D§;
         if((_loc7_ = this.§2"y§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§="D§.§%!r§,this.§2#j§);
         if(param2)
         {
            _loc7_.volume = 0;
            this.§^""§.addEventListener(Event.COMPLETE,this.§!#k§);
            this.§^""§.§"H§(this.§7#v§,_loc7_,_loc4_.volume,0.5);
         }
         else
         {
            _loc7_.volume = _loc4_.volume;
         }
      }
      
      private function §2#j§(param1:Event) : void
      {
         this.§@#b§(this.§7#v§,false,true);
      }
      
      private function §2"y§(param1:§[",§, param2:Number = 0) : §="D§
      {
         var _loc3_:§="D§ = null;
         if(param1.§[!x§ != "")
         {
            _loc3_ = §!#&§.§>"y§(param1.§[!x§,param1.songId,param1.§-$9§,param1.§,#s§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = §!#&§.playSound(param1.songId,param1.§,#s§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §?q§(param1:Event = null) : void
      {
         this.§@#b§(this.§&_§,true,this.§<!#§);
      }
      
      private function §!#k§(param1:Event = null) : void
      {
         this.§^""§.removeEventListener(Event.COMPLETE,this.§!#k§);
      }
      
      private function §1_§(param1:§6"4§) : void
      {
         if(param1.§%5§ == this.§7#v§)
         {
            this.§`#G§();
         }
      }
      
      private function §]",§(param1:§9#1§) : void
      {
         if(param1.type == §9#1§.§!!u§)
         {
            if(param1.§,#s§ == this.§`5§)
            {
               this.§=!g§();
               this.§7#v§ = "";
               this.§`5§ = "";
            }
         }
         else
         {
            this.§=!g§();
            this.§7#v§ = "";
            this.§`5§ = "";
         }
      }
      
      public function §[!q§(param1:Number, param2:String) : void
      {
         this.§+"D§ = param1;
         this.§=#y§ = param2;
      }
   }
}
