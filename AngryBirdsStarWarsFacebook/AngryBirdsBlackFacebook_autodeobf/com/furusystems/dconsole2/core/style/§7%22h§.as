package com.furusystems.dconsole2.core.style
{
   import §+!J§.§""A§;
   import §1"b§.§>l§;
   import §9"g§.§["§;
   import com.furusystems.dconsole2.DConsole;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §7"h§
   {
       
      
      private var §%h§:Class;
      
      private var §9!7§:Class;
      
      private var §7!4§:Boolean;
      
      private var §"!Q§:Boolean;
      
      public var colors:§ "c§;
      
      public var theme:§["§;
      
      private var §0"]§:URLLoader;
      
      private var §#!l§:URLLoader;
      
      private var §%"c§:int = 0;
      
      private var § #!§:int = 0;
      
      private var §5"d§:§>l§;
      
      public function §7"h§(param1:DConsole)
      {
         this.§%h§ = StyleManager_DEFAULT_THEME_XML;
         this.§9!7§ = StyleManager_DEFAULT_COLOR_DESC_XML;
         this.colors = new § "c§();
         super();
         this.§5"d§ = param1.§]"z§;
         this.theme = new §["§(this);
         this.§0"]§ = new URLLoader();
         this.§0"]§.addEventListener(Event.COMPLETE,this.§9!"§);
         this.§#!l§ = new URLLoader();
         this.§#!l§.addEventListener(Event.COMPLETE,this.§?!6§);
      }
      
      public function load(param1:String = null, param2:String = null) : void
      {
         this.§ #!§ = 0;
         if(param2 == null)
         {
            this.§+"]§();
         }
         else
         {
            this.§"J§(param2);
         }
         if(param1 == null)
         {
            this.§%!>§();
         }
         else
         {
            this.loadTheme(param1);
         }
         if(this.§ #!§ == 0)
         {
            this.§"L§();
         }
      }
      
      public function §0!g§(param1:XML, param2:XML) : void
      {
         this.§+"]§(param1);
         this.§%!>§(param2);
         this.§"L§();
      }
      
      private function §?!6§(param1:Event) : void
      {
         this.§+"]§(XML(this.§#!l§.data));
         ++this.§+!0§;
      }
      
      private function §9!"§(param1:Event) : void
      {
         this.§%!>§(XML(this.§0"]§.data));
         ++this.§+!0§;
      }
      
      private function set §+!0§(param1:int) : void
      {
         this.§%"c§ = param1;
         if(this.§%"c§ >= this.§ #!§)
         {
            this.§"L§();
         }
      }
      
      private function get §+!0§() : int
      {
         return this.§%"c§;
      }
      
      private function loadTheme(param1:String) : void
      {
         ++this.§ #!§;
         this.§0"]§.load(new URLRequest(param1));
      }
      
      private function §"J§(param1:String) : void
      {
         ++this.§ #!§;
         this.§#!l§.load(new URLRequest(param1));
      }
      
      private function §+"]§(param1:XML = null) : void
      {
         this.§7!4§ = true;
         if(param1 == null)
         {
            param1 = XML(new this.§9!7§());
         }
         else
         {
            DConsole.§""W§("Custom color scheme loaded");
         }
         this.colors.§@#5§(param1);
         this.§5"d§.§#!"§(§""A§.§;!z§,null,this);
      }
      
      private function §%!>§(param1:XML = null) : void
      {
         this.§"!Q§ = true;
         if(param1 == null)
         {
            param1 = XML(new this.§%h§());
         }
         else
         {
            DConsole.§""W§("Custom theme loaded");
         }
         this.theme.§@#5§(param1);
         §0#C§.update(this);
         §?#O§.update(this);
         §<"I§.update(this);
      }
      
      private function §"L§() : void
      {
         §6!x§.refresh();
         this.§5"d§.§#!"§(§""A§.§4#I§,null,this);
      }
      
      public function get §?"!§() : XML
      {
         return this.theme.xml;
      }
      
      public function get §^!A§() : XML
      {
         return this.colors.xml;
      }
      
      public function get §+"S§() : Boolean
      {
         return this.§"!Q§;
      }
      
      public function get §[6§() : Boolean
      {
         return this.§7!4§;
      }
   }
}
