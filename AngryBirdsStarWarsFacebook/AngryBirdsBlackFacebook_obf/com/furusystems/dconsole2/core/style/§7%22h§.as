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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§%h§ = StyleManager_DEFAULT_THEME_XML;
            while(true)
            {
               this.§9!7§ = StyleManager_DEFAULT_COLOR_DESC_XML;
               while(true)
               {
                  this.colors = new § "c§();
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        this.§5"d§ = param1.§]"z§;
                        while(true)
                        {
                           this.theme = new §["§(this);
                           continue loop2;
                           addr91:
                           if(!(_loc3_ && this))
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  §§goto(addr65);
               }
            }
         }
         while(true)
         {
            this.§0"]§.addEventListener(Event.COMPLETE,this.§9!"§);
            §§goto(addr111);
         }
         §§goto(addr45);
      }
      
      public function load(param1:String = null, param2:String = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§ #!§ = 0;
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  §§push(null);
                  addr130:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr131:
                        while(true)
                        {
                           this.§+"]§();
                           addr133:
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        addr131:
                     }
                     else
                     {
                        this.§"J§(param2);
                        while(true)
                        {
                           continue loop1;
                        }
                        addr116:
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §0!g§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§+"]§(param1);
            do
            {
               this.§%!>§(param2);
               do
               {
                  this.§"L§();
               }
               while(!_loc4_);
               
            }
            while(!_loc4_);
            
         }
      }
      
      private function §?!6§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            this.§+"]§(XML(this.§#!l§.data));
            if(_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§+!0§);
               if(_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_)
               {
                  _loc2_.§+!0§ = _loc3_;
               }
            }
         }
      }
      
      private function §9!"§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            this.§%!>§(XML(this.§0"]§.data));
            if(!_loc5_)
            {
               addr42:
               var _loc2_:*;
               §§push((_loc2_ = this).§+!0§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  _loc2_.§+!0§ = _loc3_;
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      private function set §+!0§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%"c§ = param1;
            loop0:
            while(this.§%"c§ >= this.§ #!§)
            {
               if(_loc2_ || param1)
               {
                  while(true)
                  {
                     this.§"L§();
                  }
                  addr56:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function get §+!0§() : int
      {
         return this.§%"c§;
      }
      
      private function loadTheme(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§ #!§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               _loc2_.§ #!§ = _loc3_;
            }
            if(_loc5_)
            {
               addr61:
               this.§0"]§.load(new URLRequest(param1));
            }
            return;
         }
         §§goto(addr61);
      }
      
      private function §"J§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§ #!§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               _loc2_.§ #!§ = _loc3_;
            }
            if(!_loc4_)
            {
               addr61:
               this.§#!l§.load(new URLRequest(param1));
            }
            return;
         }
         §§goto(addr61);
      }
      
      private function §+"]§(param1:XML = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7!4§ = true;
            if(!_loc2_)
            {
               addr29:
               if(param1 == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr44);
                  }
               }
               else
               {
                  DConsole.§""W§("Custom color scheme loaded");
               }
               §§goto(addr56);
            }
            addr44:
            param1 = XML(new this.§9!7§());
            if(!_loc2_)
            {
               addr56:
               this.colors.§@#5§(param1);
               if(_loc3_)
               {
                  this.§5"d§.§#!"§(§""A§.§;!z§,null,this);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §%!>§(param1:XML = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!Q§ = true;
            if(!(_loc2_ && this))
            {
               §§goto(addr29);
            }
            §§goto(addr39);
         }
         addr29:
         if(param1 == null)
         {
            if(!(_loc2_ && param1))
            {
               param1 = XML(new this.§%h§());
               addr39:
               if(!_loc2_)
               {
                  §§goto(addr61);
               }
               §§goto(addr72);
            }
         }
         else
         {
            DConsole.§""W§("Custom theme loaded");
         }
         addr61:
         this.theme.§@#5§(param1);
         if(_loc3_ || _loc3_)
         {
            §0#C§.update(this);
            addr72:
         }
         do
         {
            §?#O§.update(this);
            do
            {
               §<"I§.update(this);
            }
            while(_loc2_ && _loc3_);
            
         }
         while(_loc2_);
         
      }
      
      private function §"L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6!x§.refresh();
            do
            {
               this.§5"d§.§#!"§(§""A§.§4#I§,null,this);
            }
            while(!_loc1_);
            
         }
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
