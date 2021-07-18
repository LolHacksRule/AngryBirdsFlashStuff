package §8#I§
{
   import §+D§.§^"m§;
   import §,"N§.§%"[§;
   import §7K§.§,T§;
   import §>@§.§5"H§;
   import flash.text.TextField;
   
   public class §5`§
   {
       
      
      private var §^"N§:§5"H§;
      
      private var §8!J§:§%"[§;
      
      public var view:§^"m§;
      
      private var §]!=§:String;
      
      private var §1>§:§,T§;
      
      public function §5`§(param1:§^"m§, param2:§5"H§, param3:§%"[§, param4:String, param5:§,T§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.view = param1;
               while(true)
               {
                  this.§]!=§ = param4;
                  while(true)
                  {
                     this.§1>§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§^"N§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§8!J§ = param3;
                           addr108:
                           while(_loc6_)
                           {
                              TextField(param1.mClip.price).defaultTextFormat = TextField(param1.mClip.price).getTextFormat();
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     addr61:
                     if(_loc7_ && param2)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     this.refresh();
                     if(!(_loc7_ && param2))
                     {
                        §§goto(addr38);
                     }
                     while(_loc6_)
                     {
                        §§goto(addr61);
                        §§goto(addr80);
                     }
                     addr80:
                     §§goto(addr108);
                  }
               }
            }
         }
         while(true)
         {
            TextField(param1.mClip.title).defaultTextFormat = TextField(param1.mClip.title).getTextFormat();
            §§goto(addr59);
         }
         §§goto(addr45);
      }
      
      public function set dataID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§]!=§ = param1;
         }
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set prices(param1:§,T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1>§ = param1;
         }
      }
      
      public function get prices() : §,T§
      {
         return this.§1>§;
      }
      
      public function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!this.§1>§)
            {
               §§push(this.view);
               loop0:
               while(true)
               {
                  §§pop().mClip.price.text = "";
                  addr83:
                  loop1:
                  while(_loc1_)
                  {
                     if(_loc2_ && this)
                     {
                        §§push(this.view);
                        loop2:
                        while(true)
                        {
                           §§pop().mClip.price.text = this.§8!J§.§<H§(this.§1>§.price);
                           break loop1;
                           addr96:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        addr115:
                        addr119:
                     }
                     continue loop0;
                     §§pop().mClip.title.text = this.§^"N§.getLocalizedString("shop_bundle_" + this.§]!=§.toLowerCase() + "_" + this.§1>§.quantity);
                     return;
                  }
                  while(true)
                  {
                     §§goto(addr96);
                  }
               }
            }
            §§goto(addr119);
         }
         §§goto(addr73);
      }
   }
}
