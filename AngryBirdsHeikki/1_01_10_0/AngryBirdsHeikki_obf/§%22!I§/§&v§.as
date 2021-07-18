package §"!I§
{
   import §2Y§.§7!f§;
   
   public class §&v§
   {
       
      
      private var §@!!§:§7!f§;
      
      private var §7!T§:Number;
      
      public function §&v§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            do
            {
               this.§@!!§ = new §7!f§(param1);
               do
               {
                  this.§7!T§ = param2;
               }
               while(_loc4_);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function get image() : §7!f§
      {
         return this.§@!!§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§7!T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§@!!§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr74:
                     this.§@!!§.dispose();
                     do
                     {
                        this.§@!!§ = null;
                     }
                     while(!_loc1_);
                     
                     addr75:
                  }
                  §§goto(addr75);
               }
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            §§push(this.§7!T§);
            if(!_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§7!T§ = §§pop();
         }
      }
      
      public function §>!I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7!T§ = param1;
         }
      }
      
      public function §!&§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!!§.texture = param1;
         }
      }
   }
}
