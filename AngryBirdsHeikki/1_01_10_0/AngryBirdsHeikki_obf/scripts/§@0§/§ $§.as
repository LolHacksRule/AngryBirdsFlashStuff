package §@0§
{
   import §"!I§.§^!2§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   
   public class § $§
   {
      
      public static const §[!W§:int = 0;
      
      public static const §try §:int = 6;
      
      public static const §!!$§:int = 7;
      
      public static const §<!O§:int = 8;
      
      public static const §2G§:int = 3;
      
      public static const §?r§:int = 5;
      
      public static const §#J§:int = 2;
      
      public static const §2C§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!W§ = 0;
         }
         while(true)
         {
            §try § = 6;
            loop1:
            while(true)
            {
               §!!$§ = 7;
               do
               {
                  §<!O§ = 8;
                  do
                  {
                     §2G§ = 3;
                     while(true)
                     {
                        §?r§ = 5;
                        addr65:
                        while(_loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  while(_loc2_ && _loc1_);
                  
               }
               while(!_loc1_);
               
               return;
            }
            if(_loc2_ && _loc2_)
            {
               continue;
            }
            §#J§ = 2;
            while(_loc1_)
            {
               §2C§ = 1;
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr34);
            }
            §§goto(addr65);
         }
      }
      
      public var §>R§:String;
      
      public var §7!?§:int;
      
      protected var §!K§:§[2§;
      
      public var §[!!§:Number;
      
      public var §>! §:String;
      
      public var §9d§:Number = 1;
      
      public var §'!V§:Number;
      
      private var §class§:Boolean = false;
      
      private var §<b§:String;
      
      private var §"$§:int;
      
      private var §&!>§:§3U§;
      
      private var §4!]§:§56§;
      
      private var §-M§:§!k§;
      
      public function § $§(param1:String, param2:int, param3:§56§, param4:§!k§, param5:§3U§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>R§ = param1;
               addr183:
               while(true)
               {
                  this.§7!?§ = param2;
                  addr178:
                  while(true)
                  {
                     this.§4!]§ = param3;
                     addr161:
                     while(!_loc15_)
                     {
                        this.§<b§ = param12;
                     }
                     continue loop0;
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            this.§"$§ = param13;
            while(true)
            {
               this.§class§ = param11;
               while(true)
               {
                  this.§-M§ = param4;
                  loop7:
                  while(true)
                  {
                     this.§&!>§ = param5;
                     while(!_loc15_)
                     {
                        this.§!K§ = new §[2§(param6);
                        continue loop4;
                        if(_loc14_ || param2)
                        {
                           continue loop7;
                        }
                     }
                     §§goto(addr178);
                  }
               }
               if(_loc14_ || param3)
               {
                  return;
               }
            }
         }
      }
      
      public function get front() : Boolean
      {
         return this.§class§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§<b§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§"$§;
      }
      
      public function §2!N§() : int
      {
         return this.shape.§7!P§();
      }
      
      public function §9"§() : int
      {
         return this.shape.§[3§();
      }
      
      public function §2!&§() : int
      {
         return this.shape.§ !7§();
      }
      
      public function §try§() : Number
      {
         return this.§4!]§.getValue(§56§.§get §);
      }
      
      public function §`K§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§=!W§));
      }
      
      public function §2!1§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§1x§));
      }
      
      public function §,!U§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§"![§));
      }
      
      public function §'B§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§<D§));
      }
      
      public function §]E§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§#>§));
      }
      
      public function §=W§() : Number
      {
         return Number(this.§4!]§.getValue(§56§.§`![§));
      }
      
      public function §?=§() : int
      {
         return this.§[!!§;
      }
      
      public function get material() : §56§
      {
         return this.§4!]§;
      }
      
      public function get shape() : §3U§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§&!>§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  addr32:
                  _loc1_ = §"!S§.§-!7§.§?!O§.§!5§(this.§>R§).getFrame(0).texture;
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this);
                     §§push(§§findproperty(§3U§));
                     §§push(this.§>R§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(_loc3_)
                     {
                        §§push(§^!2§.§3!S§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              addr83:
                              §§push(§§pop() / 2);
                              §§push(_loc1_.height);
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr92);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr92);
            }
            addr92:
            §§push(§§pop() * §^!2§.§3!S§);
            if(_loc3_ || this)
            {
               addr112:
               §§push(§§pop() / 2);
            }
            §§pop().§&!>§ = new §§pop().§3U§(§§pop(),§§pop(),§§pop(),§§pop());
            return this.§&!>§;
         }
         §§goto(addr32);
      }
      
      public function get §[v§() : §!k§
      {
         return this.§-M§;
      }
      
      public function get score() : int
      {
         return this.§!K§.getValue();
      }
   }
}
