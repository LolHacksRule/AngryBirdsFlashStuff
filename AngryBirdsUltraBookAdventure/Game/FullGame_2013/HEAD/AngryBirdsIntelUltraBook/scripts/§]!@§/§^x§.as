package §]!@§
{
   import §#!,§.§0!b§;
   import §6!J§.Texture;
   
   public class §^x§
   {
       
      
      private var §'!Q§:§0!b§;
      
      private var §1W§:Number;
      
      public function §^x§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            while(true)
            {
               this.§'!Q§ = new §0!b§(param1);
               while(!_loc3_)
               {
                  this.§1W§ = param2;
                  if(!(_loc3_ && param2))
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get image() : §0!b§
      {
         return this.§'!Q§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§1W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§'!Q§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§'!Q§);
                     addr75:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr77);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.§1W§);
            if(!_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§1W§ = §§pop();
         }
      }
      
      public function §+! §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1W§ = param1;
         }
      }
      
      public function §^Y§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!Q§.texture = param1;
         }
      }
   }
}
