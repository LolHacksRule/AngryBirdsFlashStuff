package § ^§
{
   import §#"&§.§#!4§;
   import §;!§.§7!3§;
   import §]0§.§5!p§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%!a§ implements §>I§
   {
       
      
      private var §'!M§:§#!4§ = null;
      
      private var §,v§:Boolean = false;
      
      private var § o§:§7!3§;
      
      public function §%!a§(param1:§7!3§)
      {
         super();
         this.§ o§ = param1;
      }
      
      private function §%!g§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:String = this.§ o§.§@!R§.getNextLevelId();
         var _loc2_:Object = §`!2§.§+"#§(_loc1_);
         if(!_loc2_)
         {
            _loc3_ = new Object();
            _loc3_.score = 0;
            _loc3_.stars = 0;
            _loc3_.levelId = _loc1_;
            _loc3_.userId = §`!2§.§9!&§.id;
            §`!2§.levelProfile.push(_loc3_);
         }
      }
      
      public function levelCompleted() : void
      {
         var _loc4_:int = 0;
         this.§,v§ = true;
         this.§%!g§();
         var _loc1_:String = this.§ o§.§@!R§.currentLevel;
         var _loc2_:Object = §`!2§.§+"#§(this.§ o§.§@!R§.currentLevel);
         var _loc3_:int = this.§ o§.§4!n§.getScore(10);
         if(!_loc2_)
         {
            _loc2_ = new Object();
            _loc2_.score = _loc3_;
            if(_loc2_.bestScore == undefined)
            {
               _loc2_.bestScore = 0;
            }
            _loc2_.stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(_loc1_,_loc3_);
            _loc2_.levelId = _loc1_;
            _loc2_.userId = §`!2§.§9!&§.id;
            §`!2§.levelProfile.push(_loc2_);
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < §`!2§.levelProfile.length)
            {
               if(§`!2§.levelProfile[_loc4_].levelId == _loc1_)
               {
                  _loc2_.score = _loc3_;
                  _loc2_.stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(_loc1_,_loc3_);
                  _loc2_.levelId = _loc1_;
                  _loc2_.userId = §`!2§.§9!&§.id;
                  if(_loc2_.bestScore == undefined)
                  {
                     _loc2_.bestScore = 0;
                  }
                  §`!2§.levelProfile[_loc4_] = _loc2_;
               }
               _loc4_++;
            }
         }
         §`!2§.§?>§();
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§,v§ = true;
         var _loc2_:Object = §5!p§.§0>§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §#!4§.§^5§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            (§6!!§.singleton as §4!=§).§?!b§ = new §-U§("",this.§ o§.§@!R§);
            §`!2§.§9!&§ = new §[C§();
            §`!2§.levelProfile = [];
            return;
         }
         §`!2§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §`!2§.levelProfile = _loc2_.levelProfile;
            §`!2§.§?>§();
         }
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
      }
      
      public function §8o§() : void
      {
         if(this.§'!M§)
         {
            this.§'!M§.dispose();
         }
         this.§,v§ = true;
      }
      
      public function §]K§() : void
      {
         if(this.§'!M§)
         {
            this.§'!M§.dispose();
            this.§'!M§ = null;
         }
         this.§,v§ = false;
      }
      
      public function get §]!O§() : §#!4§
      {
         return this.§'!M§;
      }
      
      public function get §+!h§() : Boolean
      {
         return this.§,v§;
      }
   }
}
