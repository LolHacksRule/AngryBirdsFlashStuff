package org.flexunit.internals.runners
{
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.Method;
   import flexunit.framework.Test;
   
   public class SuiteMethod extends FlexUnit1ClassRunner
   {
       
      
      public function SuiteMethod(klass:Class)
      {
         super(testFromSuiteMethod(klass));
      }
      
      public static function testFromSuiteMethod(clazz:Class) : Test
      {
         var suiteMethod:Method = null;
         var suite:Test = null;
         var klass:Klass = new Klass(clazz);
         try
         {
            suiteMethod = klass.getMethod("suite");
            if(!suiteMethod.isStatic)
            {
               throw new Error(klass.name + ".suite() must be static");
            }
            suite = Test(suiteMethod.invoke(null));
         }
         catch(e:Error)
         {
            throw e;
         }
         return suite;
      }
   }
}
